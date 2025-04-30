#!/bin/sh

echo "Téléchargement de WP-CLI..."
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

echo "Installation de WordPress..."
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

echo "Configuration des URLs en HTTPS..."
./wp-cli.phar option update siteurl "https://$DOMAIN_NAME" --allow-root
./wp-cli.phar option update home "https://$DOMAIN_NAME" --allow-root

echo "Importation du contenu WordPress depuis InceptionWordpress.xml..."
if [ -f /var/www/html/InceptionWordpress.xml ]; then
    ./wp-cli.phar import /var/www/html/InceptionWordpress.xml --authors=create --allow-root
else
    echo "Fichier InceptionWordpress.xml introuvable !"
fi

echo "Démarrage de PHP-FPM..."
exec php-fpm8.0 -F