FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server mariadb-client gettext-base

# port mariadb
EXPOSE 3306

# setup mariadb
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# setup database
RUN mkdir ./entrypoint-initdb.d
COPY ./tools/init.sql.template /entrypoint-initdb.d
RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

# initialize database
COPY ./tools/entrypoint.sh ./
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
CMD ["mysqld"]
