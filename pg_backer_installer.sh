#!/bin/bash
# Purpose: Installer of Postgresql Backup Versoner Script
# Author: Sathish Sampath
# ------------------------------------------------------


if $(git --version)
then
	string=$(crontab -l 2>/dev/null)
	if [[ $string == *"~/pg_git/pg_backer.sh"* ]]
	then
		echo "Cron Job Already Available"
	else
		echo "Creating Cron Job"
		(crontab -l 2>/dev/null; echo "*/15 * * * * bash ~/pg_git/pg_backer.sh -with args") | crontab -
	fi
	cd ~/pg_git
	if [ -d pg_dumper ]
	then
		echo "PG Dump Folder Exists"
		cd pg_dumper
	else
		mkdir pg_dumper
		cd pg_dumper
		git init 
	fi
	cd ~
else
	echo "Git Unavailable. Install Git"
fi
