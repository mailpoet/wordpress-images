FROM php:7.4-cli

RUN apt-get update && \
    apt-get -y install \
            git \
            zlib1g-dev \
            libpng-dev \
            libssl-dev \
            libzip-dev \
            default-mysql-client \
            sudo less  \
            unzip \
        --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    docker-php-ext-install gd bcmath zip mysqli pdo pdo_mysql && \
    echo "date.timezone = UTC" >> /usr/local/etc/php/php.ini && \
    curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
