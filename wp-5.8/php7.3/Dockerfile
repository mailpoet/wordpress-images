FROM wordpress:5.8-php7.3

RUN docker-php-ext-install pdo_mysql && \
    echo "date.timezone = UTC" >> /usr/local/etc/php/php.ini && \
    \
    # allow .htaccess files (between <Directory /var/www/> and </Directory>, which is WordPress installation)
    sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
