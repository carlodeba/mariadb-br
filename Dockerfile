FROM mariadb
COPY custom.cnf /etc/mysql/conf.d
COPY backup-mysql.sh /etc/cron.daily
RUN chmod 755 /etc/cron.daily/backup-mysql.sh
ENV MYSQL_ROOT_PASSWORD tHeRo0TpWd
ENV MYSQL_DATABASE theDatabase
ENV MYSQL_USER theUser
ENV MYSQL_PASSWORD tH3p@sSwD
