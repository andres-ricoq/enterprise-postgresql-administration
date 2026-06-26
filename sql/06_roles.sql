CREATE ROLE lectura
LOGIN
PASSWORD 'Lectura2026';

GRANT CONNECT
ON DATABASE empresa_ventas
TO lectura;

GRANT USAGE
ON SCHEMA public
TO lectura;

GRANT SELECT
ON ALL TABLES IN SCHEMA public
TO lectura;

------------------------------------------------

CREATE ROLE escritura
LOGIN
PASSWORD 'Escritura2026';

GRANT CONNECT
ON DATABASE empresa_ventas
TO escritura;

GRANT INSERT,
UPDATE,
DELETE
ON ALL TABLES IN SCHEMA public
TO escritura;