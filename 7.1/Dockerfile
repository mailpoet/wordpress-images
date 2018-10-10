FROM circleci/php:7.1-apache-browsers

# Install required PHP dependencies
RUN sudo apt-get update; \
  echo "deb http://packages.dotdeb.org jessie all" | sudo tee -a /etc/apt/sources.list.d/dotdeb.list; \
  echo "deb-src http://packages.dotdeb.org jessie all" | sudo tee -a /etc/apt/sources.list.d/dotdeb.list; \
  wget -qO - http://www.dotdeb.org/dotdeb.gpg | sudo apt-key add -; \
# ref: https://github.com/docker-library/php/pull/542
  sudo rm /etc/apt/preferences.d/no-debian-php; \
  sudo apt-get update; \
  sudo apt-get install mysql-client zlib1g-dev libpng-dev; \
  sudo docker-php-ext-install bcmath mysqli pdo pdo_mysql zip gd; \
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
