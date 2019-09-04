FROM mariadb
COPY custom.cnf /etc/mysql/conf.d
COPY backup-mysql.sh /root
ENV MYSQL_ROOT_PASSWORD tHeRo0TpWd
ENV MYSQL_DATABASE theDatabase
ENV MYSQL_USER theUser
ENV MYSQL_PASSWORD tH3p@sSwD
