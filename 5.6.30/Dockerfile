FROM circleci/php:5.6.30-apache-browsers

# Install required PHP dependencies
RUN sudo apt-get update; \
  sudo apt-get install git mysql-client php5-mysql zlib1g-dev libssl-dev; \
  sudo docker-php-ext-install bcmath mysql mysqli pdo pdo_mysql zip; \
  echo "date.timezone = UTC" | sudo tee -a /usr/local/etc/php/php.ini; \
  \
# Install NodeJS + NPM
  curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -; \
  sudo apt-get install nodejs build-essential; \
  \
# Install WP-CLI
  sudo curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
  sudo chmod +x /usr/local/bin/wp; \
  \
# Clean up
  sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;
