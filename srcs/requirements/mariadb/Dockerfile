FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server mariadb-client gettext-base

# Exposer le port 3306
EXPOSE 3306

# Copier la configuration MariaDB
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Préparer les répertoires nécessaires
RUN mkdir ./entrypoint-initdb.d
COPY ./tools/init.sql.template /entrypoint-initdb.d
RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

# Copier le script d'entrée et ajouter les permissions d'exécution
COPY ./tools/entrypoint.sh ./
RUN chmod +x entrypoint.sh

# Utiliser l'utilisateur mysql pour démarrer MariaDB
USER mysql

ENTRYPOINT ["./entrypoint.sh"]
CMD ["mysqld"]