#!/bin/bash
set -eo pipefail
/etc/init.d/cron start
/docker-entrypoint.sh mysqld
exec "$@"
