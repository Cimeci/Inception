FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install -y nginx openssl

# conf SSL
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt\
    -keyout /etc/nginx/ssl/certificate.key\
    -subj "/C=FR/ST=NA/L=Angouleme/O=42/OU=42/CN=$DOMAIN_NAME/UID=$DB_USER"

RUN mkdir -p /var/run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d

# Port HTTPS
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
