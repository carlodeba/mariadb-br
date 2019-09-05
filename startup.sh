#!/bin/bash
/etc/init.d/cron start
mv /root/backup-mysql-cron /etc/cron.d
/docker-entrypoint.sh mysqld
