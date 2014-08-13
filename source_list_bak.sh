#!/bin/sh

# Script zum sichern der Paketliste und Paketquellen
# Datum: 24.06.2011
# Autor: Computerwerkstatt Glocksee Hannover
# Version 0.1



# Aktuelles Datum für Dateinamen setzen
DATE=$(date +%Y-%m-%d-%H%M%S)


# Paketliste erstellen (installierte Pakete)
dpkg --get-selections | awk '!/deinstall|purge|hold/ {print $1}' > /pfad/zum/backup/packages.${DATE}.list

# Backup der /etc/apt/sources.list
find /etc/apt/sources.list* -type f -name '*.list' -exec bash -c 'echo -e "\n## $1 ";grep -v -e ^# -e ^$ ${1}' _ {} \; > /pfad/zum/backup/sources.list.${DATE}.sav

exit $?
