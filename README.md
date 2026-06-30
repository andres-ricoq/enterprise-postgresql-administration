# Enterprise PostgreSQL Administration

Proyecto desarrollado como solución al Reto Técnico DBA Semisenior, implementando actividades de administración, monitoreo, seguridad, automatización, recuperación y continuidad operativa sobre PostgreSQL.

---

## Autor

**Andrés Rico Quintero**

---

# Tecnologías utilizadas

* PostgreSQL 16
* pgAdmin 4
* Ubuntu 24.04 (WSL2)
* Windows 11
* Bash
* Git y GitHub
* Neon PostgreSQL Cloud

---

# Arquitectura de la solución

```text
Windows 11
        │
        ▼
WSL2 Ubuntu 24.04
        │
        ▼
PostgreSQL 16
        │
        ▼
pgAdmin 4
        │
        ▼
Neon PostgreSQL Cloud
```

---

# Instalación del entorno

Actualizar paquetes:

```bash
sudo apt update
sudo apt upgrade -y
```

Instalar PostgreSQL:

```bash
sudo apt install postgresql postgresql-contrib -y
```

Verificar servicio:

```bash
sudo service postgresql status
```

---

# Configuración de acceso remoto

Archivo:

```text
/etc/postgresql/16/main/postgresql.conf
```

Configuración:

```conf
listen_addresses='*'
```

Archivo:

```text
/etc/postgresql/16/main/pg_hba.conf
```

Configuración:

```conf
host all all 172.28.70.0/24 scram-sha-256
```

---

# Modelo de datos

La base de datos implementa un sistema de ventas compuesto por:

* clientes
* empleados
* productos
* ventas
* detalle_venta

Relaciones:

* ventas → clientes
* ventas → empleados
* detalle_venta → ventas
* detalle_venta → productos

---

# Funcionalidades implementadas

* Administración de PostgreSQL.
* Configuración del servidor.
* SQL avanzado.
* Procedimientos almacenados.
* Optimización de consultas.
* Índices.
* Monitoreo.
* Seguridad.
* Auditoría.
* Backups.
* Recuperación.
* Automatización.
* Base de datos en la nube.
* Soporte e incidencias.

---

# Scripts SQL

| Archivo               | Descripción                  |
| --------------------- | ---------------------------- |
| 01_tablas.sql         | Creación del modelo de datos |
| 02_inserts.sql        | Datos iniciales              |
| 03_consultas.sql      | SQL avanzado                 |
| 04_procedimientos.sql | Procedimientos almacenados   |
| 05_indices.sql        | Índices                      |
| 06_roles.sql          | Roles y permisos             |
| 07_mantenimiento.sql  | Mantenimiento                |
| 08_monitoreo.sql      | Monitoreo                    |
| 09_seguridad.sql      | Seguridad                    |

---

# Automatización

Script:

```text
scripts/backup.sh
```

Funciones:

* Backup automático.
* Registro de logs.
* Reporte de tamaño de tablas.
* Detección de errores.

---

# Programación de tareas

Configuración cron:

```text
0 2 * * * /home/dbaadmin/backup.sh
```

---

# Recuperación

Restauración:

```bash
sudo -u postgres psql empresa_ventas < backup.sql
```

RTO alcanzado: 3 minutos.

RPO alcanzado: 15 horas.

---

# Monitoreo

Herramientas utilizadas:

* pg_stat_activity
* pg_stat_database
* Dashboard pgAdmin

Consultas:

```sql
SELECT * FROM pg_stat_activity;
```

---

# Seguridad

Implementaciones:

* Contraseñas robustas.
* Restricción por IP.
* Roles separados.
* Principio de mínimo privilegio.
* Auditoría.
* SSL/TLS.

---

# Base de datos en la nube

Proveedor:

**Neon PostgreSQL**

Características:

* PostgreSQL administrado.
* Conexiones SSL/TLS.
* Administración remota.
* Acceso mediante pgAdmin.
* Monitoreo integrado.

Parámetros de conexión:

```text
Host: ep-xxxxxxxx.us-east-1.aws.neon.tech
Puerto: 5432
SSL: require
Cliente: pgAdmin 4
```

Por motivos de seguridad no se publican credenciales de acceso.

---

# Estructura del proyecto

```text
docs/
evidencias/
presentacion/
scripts/
sql/
README.md
```

---

# Relación con la prueba técnica

| Punto                 | Estado |
| --------------------- | ------ |
| Administración        | ✔      |
| SQL Avanzado          | ✔      |
| Backup y Recovery     | ✔      |
| Monitoreo             | ✔      |
| Automatización        | ✔      |
| Seguridad             | ✔      |
| Soporte e incidencias | ✔      |
| Nube                  | ✔      |
| Documentación         | ✔      |

