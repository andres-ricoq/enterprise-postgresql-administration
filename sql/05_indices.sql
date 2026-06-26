CREATE INDEX idx_producto_nombre
ON productos(nombre);

VACUUM ANALYZE productos;

REINDEX TABLE productos;

ANALYZE;