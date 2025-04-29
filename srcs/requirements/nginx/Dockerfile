FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y nginx openssl

# Créer le répertoire SSL et générer des certificats auto-signés
RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/certificate.key \
    -out /etc/nginx/ssl/certificate.crt \
    -subj "/CN=localhost"

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]