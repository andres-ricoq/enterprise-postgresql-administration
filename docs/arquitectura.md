# Arquitectura de la solución

## Infraestructura local

- Windows 11
- WSL2 Ubuntu 24.04
- PostgreSQL 16
- pgAdmin 4

## Infraestructura en la nube

- Neon PostgreSQL
- Conexión SSL/TLS
- Administración remota

## Arquitectura híbrida

Usuarios
        ↓
Aplicación
        ↓
PostgreSQL WSL
        ↓
pgAdmin
        ↓
Neon PostgreSQL