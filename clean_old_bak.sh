#!/bin/sh

# clean_old_bak.sh
# Datum: 22.06.2011
# Autor: Computerwerkstatt Glocksee Hannover
# Version 0.1


# find loescht alle Dateien, die älter als x Tage sind

/usr/bin/find /srv/backup/server_backup/ /srv/backup/mysql_backup/ /srv/backup/dpkg_bak/ -mtime +5 -type f -exec /bin/rm "{}" \; &

exit $?
