#!/bin/bash
/etc/init.d/cron start
/docker-entrypoint.sh mysqld
exit 0
