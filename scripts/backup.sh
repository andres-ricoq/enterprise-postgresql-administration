#!/bin/bash

FECHA=$(date +%Y%m%d_%H%M)

if sudo -u postgres pg_dump empresa_ventas \
> /home/dbaadmin/backup_$FECHA.sql
then
    echo "$FECHA Backup exitoso" \
    >> /home/dbaadmin/backup.log

    sudo -u postgres psql -d empresa_ventas -c "
    SELECT relname,
           pg_size_pretty(
           pg_total_relation_size(relid))
    FROM pg_statio_user_tables;" \
    >> /home/dbaadmin/tables.log

else
    echo "$FECHA ERROR EN BACKUP" \
    >> /home/dbaadmin/backup.log
fi