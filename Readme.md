# Title: Postgresql Versioner(PV)
# Purpose: Versioning Postgresql Backup Files
# Author: Sathish Sampath
# ---------------------------------------------------------------------
											      README
Postgresql Versioner takes copy of the Postgresql and versions it
using Git. A cron job regularly takes copy of the database and compares
it with the versions available in the repository. If any changes, the
new changes are committed and saved as new versions of the database in
the repository.

Getting Started

1. Download and copy the "pg_git" folder. Move the "pg_git" to home folder.
							mv <download path> ~/. &&	cd pg_git
2. Run the "pg_backer_installer" file.
								bash pg_backer_installer.sh
3. Add the database names to "db_list.txt" separated by newline
The PV is ready to run.

To Retrieve a particular version of Database
	


