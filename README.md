# mariadb-mdc
MariaDB official image with a daily dump of all DBs. 

Dumps are stored in /var/backups.
A peristent volume mount is reccomended for /var/backups.

Script works with cron schedules defined in: backup-mysql-cron.
Script has a retention of 1 week.
