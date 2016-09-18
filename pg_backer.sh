#!/bin/bash
# Purpose: Versioning Postgresql Backup
# Author: Sathish Sampath
# ------------------------------------------------------

while read F  ; do
	cd ~/pg_git
	cd pg_dumper
	sqlfile=$F"_dump.sql"
	pg_dump $F > $sqlfile
	git add .
	date_now=$(date +%Y-%m-%d:%H:%M:%S)
	git commit -m $date_now
	cd ..        
done <~/pg_git/db_list.txt
