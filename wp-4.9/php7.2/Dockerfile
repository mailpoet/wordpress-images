FROM wordpress:4.9-php7.2

RUN apt-get update && \
    apt-get -y install \
            zlib1g-dev \
            sudo less \
        --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    docker-php-ext-install bcmath zip mysqli pdo pdo_mysql && \
    echo "date.timezone = UTC" >> /usr/local/etc/php/php.ini
