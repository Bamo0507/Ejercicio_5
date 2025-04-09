-- PRUEBA BEFORE INSERT
INSERT INTO Pedidos (id_cliente, id_direccion, id_estado, monto_total) VALUES
(14, 15, 2, 40.00);

-- PRUEBA BEFORE UPDATE
UPDATE Productos
SET nombre = '45'
WHERE id = 1;

-- PRUEBA BEFORE DELETE
DELETE FROM Productos
WHERE id = 2;

-- PRUEBA BEFORE TRUNCATE
TRUNCATE Bitacora_Inventario;

-- PRUEBA AFTER INSERT
SELECT * FROM Pedidos WHERE id = 1;

INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, precio) VALUES
(1, 1, 2, 16.00);

SELECT * FROM Pedidos WHERE id = 1;

-- PRUEBA AFTER UPDATE
SELECT * FROM Bitacora_Inventario;

UPDATE Productos
SET cantidad = 1000
WHERE id = 1;

SELECT * FROM Bitacora_Inventario;

-- PRUEBA AFTER DELETE
SELECT * FROM Pedidos WHERE id = 1;

DELETE FROM Detalles_Pedido
WHERE id = 1;

SELECT * FROM Pedidos WHERE id = 1;

-- PRUEBA AFTER TRUNCATE
SELECT * FROM Pedidos;

TRUNCATE Detalles_Pedido;

SELECT * FROM Pedidos;