#!/bin/sh

# Script zum dumpen von MySql Datenbanken
# Datum: 22.06.2011
# Autor: Computerwerkstatt Glocksee Hannover
# Version 0.1


# Aktuelles Datum für Dateinamen 
DATE=$(date +%Y-%m-%d-%H%M%S)

# Passwörter für die DB
PASSWD_DBNAME=streng_geheimes_passwort

# Backup Datenbank "DBNAME"
mysqldump --opt -Q -u dbuser -B dbname -p$PASSWD_DBNAME >/pfad/zum/mysql_backup/DBNAME.bak.db.$DATE.sql

exit $?
