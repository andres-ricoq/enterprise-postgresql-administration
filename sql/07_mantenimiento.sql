VACUUM ANALYZE productos;

REINDEX TABLE productos;

ANALYZE;

SELECT
    relname,
    pg_size_pretty(
        pg_total_relation_size(relid)
    ) AS tamaño
FROM pg_catalog.pg_statio_user_tables;