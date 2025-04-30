FROM debian:bullseye

# Ajouter le dépôt sury.org pour PHP
RUN apt update -y && apt install -y lsb-release apt-transport-https ca-certificates curl gnupg && \
    curl -sSL https://packages.sury.org/php/apt.gpg | apt-key add - && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list

# Installer PHP 8.0 et les extensions nécessaires
RUN apt update -y && apt upgrade -y && apt install -y php8.0-fpm php8.0-mysqli

# Ajouter les droits pour /run/php
RUN mkdir -p /run/php && chown www-data:www-data /run/php

# Copier la configuration de PHP-FPM
COPY ./conf/www.conf /etc/php/8.0/fpm/pool.d

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier le script de configuration et ajouter les droits
COPY ./tools/script.sh .
RUN chmod +x script.sh

# Exposer le port 9000
EXPOSE 9000

# Définir le point d'entrée et la commande
ENTRYPOINT ["/var/www/html/script.sh"]
CMD ["php-fpm8.0", "-F"]