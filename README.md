# mariadb-mdc
MariaDB official image (10.4.7) with a daily dump of all DBs. 

Dumps are stored in /var/backups.
A peristent volume mount is reccomended for /var/backups.

Script works with cron schedules defined in: backup-mysql-cron.
Script has a retention of 1 week.
