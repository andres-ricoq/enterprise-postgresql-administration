CREATE OR REPLACE PROCEDURE sp_total_cliente(
    IN cliente_id INTEGER,
    INOUT total NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN

    SELECT COALESCE(
        SUM(dv.subtotal),0)
    INTO total
    FROM ventas v
    JOIN detalle_venta dv
        ON v.id_venta = dv.id_venta
    WHERE v.id_cliente = cliente_id;

EXCEPTION
    WHEN OTHERS THEN
        total := -1;

END;
$$;