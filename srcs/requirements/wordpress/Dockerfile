FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y curl php-fpm php-mysqli

# setup PHP-FPM
RUN mkdir -p /run/php && chown www-data:www-data /run/php

# setup Wordpress
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
WORKDIR /var/www/html

# initialize Wordpress
COPY ./tools/script.sh .
RUN chmod +x script.sh

#port PHP-FPM
EXPOSE 9000

ENTRYPOINT ["/var/www/html/script.sh"]
CMD ["php-fpm7.4", "-F"]