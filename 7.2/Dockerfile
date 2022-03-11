FROM cimg/php:7.2

RUN sudo apt-get update && \
  sudo apt-get install default-mysql-client zlib1g-dev libpng-dev libfreetype6-dev && \
  sudo apt-get install apache2 && \
  sudo pecl install xdebug && \
  sudo apt-get install postfix && \
  \
  # Install NodeJS + NPM
  curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - && \
  sudo apt-get install nodejs build-essential && \
  \
  # Install WP-CLI
  sudo curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
  sudo chmod +x /usr/local/bin/wp && \
  \
  # Clean up
  sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sudo mkdir -p /etc/php.d && \
  echo 'memory_limit = -1' | sudo tee -a /etc/php.d/circleci.ini && \
  sudo pear config-set php_ini /etc/php.d/circleci.ini && \
  sudo pecl update-channels
