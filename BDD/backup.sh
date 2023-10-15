#!/bin/bash

# TODO: Use dedicated user to backup tables

# Import env vars
source ./.env

# Add extra env vars
DB_USER="root"
BACKUP_FOLDER="./backups"

# Backup target folder
OUTDIR=`date +%Y-%m-%d/%H-%M-%S`
mkdir -p $BACKUP_FOLDER/$OUTDIR

# Get databases
DATABASES=`docker exec $DB_CT_NAME mysql -u$DB_USER -p$MYSQL_ROOT_PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v -e Database -e _schema -e mysql`
echo "DATABASES: $DATABASES"

# Dump databases
for DB_NAME in $DATABASES; do
    docker exec -i $DB_CT_NAME mysqldump -u$DB_USER -p$MYSQL_ROOT_PASSWORD --databases $DB_NAME --skip-comments --skip-lock-tables > $BACKUP_FOLDER/$OUTDIR/$DB_NAME.sql
done

# Compress dumps
for DB_NAME in $DATABASES; do
    gzip $BACKUP_FOLDER/$OUTDIR/$DB_NAME.sql
done