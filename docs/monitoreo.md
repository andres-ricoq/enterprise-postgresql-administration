# Monitoreo

Herramientas:

- pg_stat_activity
- pg_stat_database
- Dashboard pgAdmin

Consultas:

SELECT * FROM pg_stat_activity;

SELECT
    relname,
    pg_size_pretty(
        pg_total_relation_size(relid))
FROM pg_statio_user_tables;

Alertas:

- Conexiones al 80%.
- Espacio al 80%.
- Query > 5 minutos.