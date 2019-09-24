FROM wordpress:5.0-php7.2-apache

RUN apt-get update && \
    apt-get -y install \
            zlib1g-dev \
            sudo less \
        --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    docker-php-ext-install bcmath zip mysqli pdo pdo_mysql && \
    echo "date.timezone = UTC" >> /usr/local/etc/php/php.ini && \
    \
    # allow .htaccess files (between <Directory /var/www/> and </Directory>, which is WordPress installation)
    sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
