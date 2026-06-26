-- JOIN múltiple

SELECT
    c.nombre AS cliente,
    p.nombre AS producto,
    dv.cantidad,
    dv.subtotal,
    e.nombre AS vendedor
FROM ventas v
JOIN clientes c
    ON v.id_cliente = c.id_cliente
JOIN empleados e
    ON v.id_empleado = e.id_empleado
JOIN detalle_venta dv
    ON v.id_venta = dv.id_venta
JOIN productos p
    ON p.id_producto = dv.id_producto;

------------------------------------------------

-- Función ventana

SELECT
    nombre,
    precio,
    ROW_NUMBER()
    OVER (ORDER BY precio DESC)
AS posicion
FROM productos;

------------------------------------------------

-- Subconsulta

SELECT
    nombre,
    precio
FROM productos
WHERE precio >
(
    SELECT AVG(precio)
    FROM productos
);