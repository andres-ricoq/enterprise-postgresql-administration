# Runbook Operativo

## Verificar estado del servicio

sudo service postgresql status

## Reiniciar PostgreSQL

sudo service postgresql restart

## Monitorear conexiones

SELECT * FROM pg_stat_activity;

## Ejecutar backup

./backup.sh

## Restaurar base

sudo -u postgres psql empresa_ventas < backup.sql

## Revisar logs

cat backup.log

## Analizar consultas

EXPLAIN ANALYZE