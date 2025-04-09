------------------------------------------------
-- Funcion para el trigger de BEFORE INSERT en los pedidos
--
-- Esta funcion se utiliza para validar que un cliente tiene membresia
-- vigente, previo a hacer INSERT en la tabla de PEDIDOS
------------------------------------------------
CREATE FUNCTION trigger_before_insert_order()
RETURNS TRIGGER AS $$
DECLARE
  cant_membresias_vigentes INTEGER;
BEGIN
  SELECT COUNT(*) INTO cant_membresias_vigentes
  FROM Historial_Membresias
  WHERE id_client = NEW.id_cliente
    AND CURRENT_DATE BETWEEN fecha_inicio AND fecha_fin;

  IF cant_membresias_vigentes = 0 THEN
    RAISE EXCEPTION 'El cliente con id % not tiene una membresia vigente, no se puede hacer el pedido.', NEW.id_cliente;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

  

CREATE TRIGGER verificar_membresia_pedidos
BEFORE INSERT ON PEDIDOS
FOR EACH ROW
EXECUTE PROCEDURE trigger_before_insert_order();
------------------------------------------------

-- -------------------------------------------------
-- Funcion para el trigger de BEFORE UPDATE en los PRODUCTOS
--
-- Este trigger se utiliza para validar el cambio que se realiza
-- sobre la tabla de productos, si el cambio es sobre nombre 
-- que lo que se este insertando no sea nulo o valores numericos
------------------------------------------------
CREATE FUNCTION trigger_before_update_product()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.nombre <> OLD.nombre THEN
    IF NEW.nombre IS NULL THEN
      RAISE EXCEPTION 'El nombre del producto no puede ser nulo.';
    END IF;

    IF NEW.nombre ~ '^[0-9]+$' THEN
      RAISE EXCEPTION 'El nombre del producto no puede ser un valor numerico.';
    END IF;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_nombre_productos
BEFORE UPDATE ON PRODUCTOS 
FOR EACH ROW
EXECUTE PROCEDURE trigger_before_update_product();
------------------------------------------------

-- -------------------------------------------------


-- -------------------------------------------------
-- Funcion para el trigger de BEFORE DELETE en los PRODUCTOS
--
-- Este trigger se utiliza para validar que si se quiere eliminar
-- un producto, la cantidad en el inventario sea cero
------------------------------------------------
CREATE FUNCTION trigger_before_delete_product()
RETURNS TRIGGER AS $$
BEGIN
  IF OLD.cantidad > 0 THEN
    RAISE EXCEPTION 'No se puede eliminar el producto con id % porque tiene % unidades en inventario.', OLD.id, OLD.cantidad;
  END IF;

  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_cantidad_productos
BEFORE DELETE ON PRODUCTOS
FOR EACH ROW
EXECUTE PROCEDURE trigger_before_delete_product();
------------------------------------------------

-- -------------------------------------------------
-- Funcion para el trigger de BEFORE TRUNCATE en la tabla de bitacora_inventario
-- 
-- Este trigger se utiliza para validar que si se quiere eliminar el contenido
-- de la tabla de bitacora de inventario, que no lo permita
------------------------------------------------
CREATE FUNCTION trigger_before_truncate_inventory()
RETURNS TRIGGER AS $$
BEGIN
  RAISE EXCEPTION 'No se puede eliminar el contenido de la tabla de bitacora_inventario.';
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_truncate_bitacora_inventario
BEFORE TRUNCATE ON Bitacora_Inventario
FOR EACH STATEMENT
EXECUTE PROCEDURE trigger_before_truncate_orders();
------------------------------------------------




-- -------------------------------------------------
-- Funcion para el trigger de AFTER INSERT en la tabla de Pedidos
--
-- Este trigger se utiliza para que cuando se inserte un detalle de pedido
-- se updatee el monto_total del pedido al que corresponda
------------------------------------------------
CREATE FUNCTION trigger_after_insert_order_detail()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE Pedidos
  SET monto_total = (
    SELECT COALESCE(SUM(precio * cantidad), 0)
    FROM Detalles_Pedido
    WHERE id_pedido = NEW.id_pedido
  )
  WHERE id = NEW.id_pedido;

  RAISE NOTICE 'El pedido con id % ha sido actualizado con un nuevo monto total.', NEW.id_pedido;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER actualizar_monto_total_pedidos
AFTER INSERT ON Detalles_Pedido
FOR EACH ROW
EXECUTE PROCEDURE trigger_after_insert_order_detail();
------------------------------------------------

-- -------------------------------------------------
-- Funcion para el trigger de AFTER UPDATE en la tabla de PRODUCTOS
-- 
-- Este trigger se utiliza para que cuando se actualice la cantidad de un producto
-- se inserte un registro en la tabla de bitacora_inventario
------------------------------------------------
CREATE FUNCTION trigger_after_update_product()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO Bitacora_Inventario (id_producto, cantidad_antes, cantidad_despues, fecha_modificacion)
  VALUES (NEW.id, OLD.cantidad, NEW.cantidad, CURRENT_TIMESTAMP);

  RAISE NOTICE 'Se ha registrado un cambio en la cantidad del producto con id %: % -> %', NEW.id, OLD.cantidad, NEW.cantidad;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER registrar_cambio_cantidad_productos
AFTER UPDATE ON PRODUCTOS
FOR EACH ROW
WHEN (OLD.cantidad IS DISTINCT FROM NEW.cantidad)
EXECUTE PROCEDURE trigger_after_update_product();
------------------------------------------------

-- -------------------------------------------------
-- Funcion para el trigger de AFTER DELETE
-- 
-- Este trigger se utiliza para que cuando se elimine un detalle de un pedido
-- se updatee el monto_total del pedido al que corresponda
------------------------------------------------
CREATE FUNCTION trigger_after_delete_order_detail()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE Pedidos
  SET monto_total = (
    SELECT COALESCE(SUM(precio * cantidad), 0)
    FROM Detalles_Pedido
    WHERE id_pedido = OLD.id_pedido
  )
  WHERE id = OLD.id_pedido;

  RAISE NOTICE 'El pedido con id % ha sido actualizado con un nuevo monto total.', OLD.id_pedido;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER reducir_monto_total_pedidos
AFTER DELETE ON Detalles_Pedido
FOR EACH ROW
EXECUTE PROCEDURE trigger_after_delete_order_detail();
------------------------------------------------

-- -------------------------------------------------
-- Funcion para el trigger de AFTER TRUNCATE
-- 
-- Este trigger se utiliza para que cuando se elimine el contenido de la tabla de detalles de pedido
-- se updatee el monto_total de todos los pedidos
------------------------------------------------
CREATE FUNCTION trigger_after_truncate_order_details()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE Pedidos
  SET monto_total = 0;

  RAISE NOTICE 'Todos los pedidos han sido actualizados con un monto total de 0.';
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER actualizar_monto_total_pedidos_truncate
AFTER TRUNCATE ON Detalles_Pedido
FOR EACH STATEMENT
EXECUTE PROCEDURE trigger_after_truncate_order_details();
------------------------------------------------
