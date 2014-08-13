#!/bin/bash

#Server Backup mit Tar

DATE=$(date +%Y-%m-%d-%H%M%S)

# Man muß schreibberechtigt im entsprechenden Verzeichnis sein.

BACKUP_DIR="/pfad/zum/server_backup/"

# Hier Verzeichnisse auflisten, die gesichert werden sollen.

SOURCE="/home/ /etc/ /var/www/"

tar -cpf ${BACKUP_DIR}/backup-${DATE}.tar ${SOURCE}

exit $?
