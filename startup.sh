#!/bin/bash
/docker-entrypoint.sh mysqld
/etc/init.d/cron start
