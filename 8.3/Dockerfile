FROM cimg/php:8.3

RUN sudo add-apt-repository ppa:ondrej/php -y && \
  sudo apt-get update && \
  sudo apt-get install -y default-mysql-client zlib1g-dev libpng-dev libfreetype6-dev && \
  sudo apt-get install -y libapache2-mod-php8.3 php-mysql apache2 && \
  sudo pecl install xdebug &&\
  \
  # Install NodeJS, enable Corepack
  curl -sL https://deb.nodesource.com/setup_22.x | sudo -E bash - && \
  sudo apt-get install -y nodejs build-essential && \
  sudo corepack enable && \
  # Install WP-CLI
  sudo curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
  sudo chmod +x /usr/local/bin/wp && \
  \
  # Clean up
  sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
