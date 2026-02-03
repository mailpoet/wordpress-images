FROM cimg/php:7.3

RUN sudo apt-get update && \
  sudo apt-get install -y default-mysql-client zlib1g-dev libpng-dev libfreetype6-dev && \
  sudo apt-get install -y apache2 && \
  sudo apt-get install -y postfix && \
  \
  # Install NodeJS + NPM
  curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - && \
  sudo apt-get install -y nodejs build-essential && \
  sudo corepack enable && \
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
