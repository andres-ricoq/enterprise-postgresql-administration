SHOW ssl;

SELECT version();

SELECT
    LEFT(nombre,2) || '***'
FROM clientes;