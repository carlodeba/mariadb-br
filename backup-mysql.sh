#!/bin/bash
DATE=$(/bin/date +%a-%H)
SQL_FILES=/var/backups/mysql_all_$DATE
MYSQL='mysql -N -uroot -p$MYSQL_ROOT_PASSWORD'
MYSQLDUMP='mysqldump -uroot -p$MYSQL_ROOT_PASSWORD --single-transaction'
DATABASES=`echo show databases|${MYSQL}|xargs`
mkdir -v  ${SQL_FILES}
for db in $DATABASES
do
        nice -n 19 ${MYSQLDUMP} ${db} > $SQL_FILES/$db.sql
done
nice -n 19 tar cjvpf ${SQL_FILES}.tar.bz2 ${SQL_FILES} && rm -fr ${SQL_FILES}
