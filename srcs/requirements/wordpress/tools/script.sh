#!/bin/sh

# Télécharger WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

# Installer WordPress
./wp-cli.phar core download --allow-root
./wp-cli.phar config create \
    --dbname=$WORDPRESS_DB_NAME \
    --dbuser=$WORDPRESS_DB_USER \
    --dbpass=$WORDPRESS_DB_PASSWORD \
    --dbhost=$WORDPRESS_DB_HOST \
    --allow-root

./wp-cli.phar core install \
    --url=https://$DOMAIN_NAME \
    --title="Inception" \
    --admin_user=$WP_USER \
    --admin_password=$WP_PASS \
    --admin_email=$WP_MAIL \
    --allow-root

# Forcer les URLs en HTTPS
./wp-cli.phar option update siteurl "https://$DOMAIN_NAME" --allow-root
./wp-cli.phar option update home "https://$DOMAIN_NAME" --allow-root

# Créer un utilisateur supplémentaire
./wp-cli.phar user create $WP_USER2 $WP_MAIL2 \
    --role=author \
    --user_pass=$WP_PASS2 \
    --allow-root

./wp-cli.phar user set-role 2 editor --allow-root

# Importer le contenu WordPress
./wp-cli.phar search-replace 'http://localhost' 'https://localhost' /var/www/html/InceptionWordpress.xml --all-tables --allow-root
./wp-cli.phar import /var/www/html/InceptionWordpress.xml \
    --authors=create \
    --allow-root

# Démarrer PHP-FPM
exec php-fpm7.4 -F