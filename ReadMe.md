# Documentación de Triggers para Ventas de Productos Biodegradables

Este ReadMe tiene como objetivo documentar el propósito de los triggers, el tipo de operación que realizan, justificación de tipo y eventos, y se incluirá una alternativa que se pudo utilizar para llegar al mismo resultado.

---

## 1. Validación de Membresía en Pedidos

**Trigger: verificar_membresia_pedidos**

- **Función:** `trigger_before_insert_order()`
- **Evento:** **BEFORE INSERT** sobre la tabla **PEDIDOS**.
- **Propósito:**
  - Validar que un cliente tenga una membresía vigente antes de insertar un nuevo pedido.
- **Justificación del tipo BEFORE:**
  - Se utiliza BEFORE INSERT para interceptar y cancelar la operación si el cliente no cumple con la condición, evitando almacenar pedidos inválidos.
- **Alternativa:**
  - Esta validación se pudo haber implementado desde el backend, mediante una función de verificación antes de realizar la solicitud al servidor.

---

## 2. Validación de Actualización del Nombre de un Producto

**Trigger: verificar_nombre_productos**

- **Función:** `trigger_before_update_product()`
- **Evento:** **BEFORE UPDATE** sobre la tabla **PRODUCTOS**.
- **Propósito:**
  - Asegurar que, al actualizar el campo `nombre`, el nuevo valor no sea nulo ni contenga únicamente dígitos.
- **Justificación del tipo BEFORE:**
  - Permite validar el nuevo valor antes de que se actualice físicamente en la base de datos.
- **Alternativa:**
  - Esta validación también podría implementarse en el backend, validando los datos en el controlador o servicio.

---

## 3. Prevención de Eliminación de Productos que Tengan Existencia

**Trigger: verificar_cantidad_productos**

- **Función:** `trigger_before_delete_product()`
- **Evento:** **BEFORE DELETE** sobre la tabla **PRODUCTOS**.
- **Propósito:**
  - Impedir la eliminación de productos si aún tienen unidades en inventario.
- **Justificación del tipo BEFORE:**
  - Impide la eliminación antes de que se ejecute, asegurando que no se pierda el control del inventario.
- **Alternativa:**
  - El backend podría bloquear esta operación validando el stock antes de permitir la eliminación.

---

## 4. Prevención de Truncado de la Bitácora del Inventario

**Trigger: verificar_truncate_bitacora_inventario**

- **Función:** `trigger_before_truncate_orders()`
- **Evento:** **BEFORE TRUNCATE** sobre la tabla **BITACORA_INVENTARIO**.
- **Propósito:**
  - Evitar que se borre masivamente el contenido de la bitácora, asegurando la trazabilidad del inventario.
- **Justificación del tipo BEFORE TRUNCATE:**
  - Permite cancelar el truncado de inmediato con un error personalizado.
- **Alternativa:**
  - Se podrían controlar los permisos de acceso desde el backend o con políticas de roles en la base de datos.

---

## 5. Recalcular Monto Tras Insertar Detalles a un Pedido

**Trigger: actualizar_monto_total_pedidos**

- **Función:** `trigger_after_insert_order_detail()`
- **Evento:** **AFTER INSERT** en **DETALLES_PEDIDO**.
- **Propósito:**
  - Actualizar el campo `monto_total` en la tabla `PEDIDOS` al agregar un nuevo detalle.
- **Justificación del tipo AFTER:**
  - Permite usar el valor recién insertado para recalcular el total.
- **Alternativa:**
  - Desde el backend, calcular el total y enviar el valor actualizado al insertar un detalle.

---

## 6. Registro en Bitácora de Cambios en Inventario

**Trigger: registrar_cambio_cantidad_productos**

- **Función:** `trigger_after_update_product()`
- **Evento:** **AFTER UPDATE** en **PRODUCTOS** (cuando cambia la cantidad).
- **Propósito:**
  - Insertar un nuevo registro en la `Bitacora_Inventario` para reflejar cambios de inventario.
- **Justificación del tipo AFTER:**
  - AFTER UPDATE asegura que tanto el valor anterior como el nuevo estén disponibles.
- **Alternativa:**
  - El backend podría gestionar esta bitácora, pero el trigger garantiza que se registre automáticamente sin depender de lógica adicional.

---

## 7. Recalcular Monto Total tras Eliminar Detalles

**Trigger: reducir_monto_total_pedidos**

- **Función:** `trigger_after_delete_order_detail()`
- **Evento:** **AFTER DELETE** en **DETALLES_PEDIDO**.
- **Propósito:**
  - Recalcular el monto_total de un pedido si se elimina un detalle.
- **Justificación del tipo AFTER:**
  - El detalle ya fue eliminado, por lo que se recalcula el total restante.
- **Alternativa:**
  - Implementar la lógica en el backend que recalcula el total después de eliminar un detalle.

---

## 8. Reiniciar Montos tras TRUNCATE de Detalles

**Trigger: actualizar_monto_total_pedidos_truncate**

- **Función:** `trigger_after_truncate_order_details()`
- **Evento:** **AFTER TRUNCATE** sobre **DETALLES_PEDIDO**.
- **Propósito:**
  - Cuando se borra el contenido de `DETALLES_PEDIDO`, se actualiza el monto_total de todos los pedidos a cero.
- **Justificación del tipo AFTER TRUNCATE:**
  - Es necesario esperar a que se complete la eliminación para luego reflejarlo en la tabla `PEDIDOS`.
- **Alternativa:**
  - El backend podría llamar a un procedimiento de limpieza, pero automatizarlo desde la base garantiza que haya coherencia en la base de datos.

---