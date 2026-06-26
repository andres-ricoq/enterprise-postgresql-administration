# Enterprise PostgreSQL Administration

Proyecto desarrollado como solución al reto técnico DBA Semisenior, implementando actividades de administración, monitoreo, seguridad, automatización y continuidad operativa sobre PostgreSQL.

---

## Tecnologías utilizadas

- PostgreSQL 16
- pgAdmin 4
- Ubuntu 24.04 WSL2
- Bash
- Git y GitHub
- Neon PostgreSQL

---

## Configuración del entorno

### Instalación PostgreSQL

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib -y
```

### Verificar servicio

```bash
sudo service postgresql status
```

### Configuración de acceso remoto

Archivo:

```text
/etc/postgresql/16/main/postgresql.conf
```

```conf
listen_addresses='*'
```

Archivo:

```text
/etc/postgresql/16/main/pg_hba.conf
```

```conf
host all all 172.28.70.0/24 scram-sha-256
```

---

## Modelo de datos

La base de datos implementa un sistema de ventas compuesto por las siguientes tablas:

- clientes
- empleados
- productos
- ventas
- detalle_venta

Relaciones:

- ventas → clientes
- ventas → empleados
- detalle_venta → ventas
- detalle_venta → productos

---

## Estructura del proyecto

```text
sql/
scripts/
docs/
evidencias/
presentacion/
```

---

## Scripts incluidos

| Archivo | Descripción |
|--------|-------------|
| backup.sh | Generación automática de respaldos |
| 01_tablas.sql | Creación de tablas |
| 02_inserts.sql | Datos iniciales |
| 03_consultas.sql | SQL avanzado |
| 04_procedimientos.sql | Procedimientos almacenados |
| 05_indices.sql | Índices y mantenimiento |
| 06_roles.sql | Seguridad y permisos |

---

## Referencia a los puntos del reto

| Punto | Implementación |
|------|---------------|
| 1 | Administración de bases de datos |
| 2 | SQL avanzado |
| 3 | Backup y recuperación |
| 4 | Monitoreo |
| 5 | Automatización |
| 6 | Seguridad |
| 7 | Soporte e incidentes |
| 8 | Base de datos en la nube |
| 9 | Documentación |
| 10 | Entregables |

---

## Base de datos en la nube

Se implementó una instancia PostgreSQL administrada mediante Neon.

Características:

- Conexión SSL.
- Administración remota.
- Acceso desde pgAdmin.
- Monitoreo integrado.

---

## Autor

Andrés Rico Quintero

Reto Técnico DBA Semisenior.