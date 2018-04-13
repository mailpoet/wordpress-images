FROM circleci/php:5.6.30-apache-browsers

# Install required PHP dependencies
RUN sudo apt-get update; \
  sudo apt-get install mysql-client php5-mysql zlib1g-dev; \
  sudo docker-php-ext-install mysql mysqli pdo pdo_mysql zip; \
  \
# Install NodeJS + NPM
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -; \
  sudo apt-get install nodejs build-essential; \
  \
# Install WP-CLI
  sudo curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
  sudo chmod +x /usr/local/bin/wp;
