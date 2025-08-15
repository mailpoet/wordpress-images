FROM circleci/php:8.0-apache

RUN sudo apt-get update && \
  sudo apt-get install default-mysql-client zlib1g-dev libpng-dev libjpeg62-turbo-dev libfreetype6-dev && \
  sudo docker-php-ext-configure gd --with-jpeg --with-freetype && \
  sudo docker-php-ext-install bcmath mysqli pdo pdo_mysql zip gd && \
  \
  # Install NodeJS + NPM
  curl -sL https://deb.nodesource.com/setup_22.x | sudo -E bash - && \
  sudo apt-get install nodejs build-essential && \
  \
  # Install WP-CLI
  sudo curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
  sudo chmod +x /usr/local/bin/wp && \
  \
  # Clean up
  sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sudo sed -i 's/^zend_extension/;zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
