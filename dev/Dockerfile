FROM wordpress:php7.2

# additinal extensions
RUN apt-get update \
	&& apt-get install -y git zlib1g-dev wget gnupg ssmtp \
	&& docker-php-ext-install pdo pdo_mysql zip \
	&& pecl install xdebug-2.6.0 && \
	\
    # Install NodeJS + NPM 
	curl -sL https://deb.nodesource.com/setup_9.x > setup_9.x && \
	chmod +x setup_9.x && \
	./setup_9.x && \
    apt-get install -y nodejs build-essential && \
	\
	# Install WP-CLI
	curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x /usr/local/bin/wp && \
	\
	# Installing Transifex Client
	apt-get update && \
	apt-get install -y python-pip gettext zip subversion && \
	pip install transifex-client && \
	\
	# Clean up
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker/php.ini /usr/local/etc/php/conf.d/php_user.ini

# ssmtp config
RUN sed -i "s|mailhub=mail|mailhub=smtp:1025 |g" /etc/ssmtp/ssmtp.conf

# xdebug config
ENV XDEBUGINI_PATH=/usr/local/etc/php/conf.d/xdebug.ini
RUN echo "zend_extension="`find /usr/local/lib/php/extensions/ -iname 'xdebug.so'` > $XDEBUGINI_PATH
COPY docker/xdebug.ini /tmp/xdebug.ini
RUN cat /tmp/xdebug.ini >> $XDEBUGINI_PATH
