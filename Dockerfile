FROM mariadb
COPY custom.cnf /etc/mysql/conf.d
COPY backup-mysql.sh /root
RUN chmod 755 /root/backup-mysql.sh
COPY 000-start.cron.sh /docker-entrypoint-initdb.d
RUN chmod 755 /docker-entrypoint-initdb.d/000-start.cron.sh
RUN apt-get update
RUN apt-get install cron
ENV MYSQL_ROOT_PASSWORD tHeRo0TpWd
ENV MYSQL_DATABASE theDatabase
ENV MYSQL_USER theUser
ENV MYSQL_PASSWORD tH3p@sSwD
