# Procedimiento de recuperación

1. Identificar la falla.
2. Detener conexiones.
3. Restaurar respaldo.
4. Validar tablas.
5. Validar aplicación.
6. Documentar incidente.

Comando:

sudo -u postgres psql empresa_ventas < backup.sql