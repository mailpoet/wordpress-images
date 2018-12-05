# WordPress Images

This repository houses Docker images to facilitate automated testing of WordPress plugins on CircleCI.
You can find prebuilt images on Docker Hub: [mailpoet/wordpress](https://hub.docker.com/r/mailpoet/wordpress/)

## Images

### PHP

- PHP 5.6.30, based on `circleci/php:5.6.30-apache-browsers`
- PHP 7.1, based on `circleci/php:7.1-apache-browsers`

Extensions:

- bcmath
- mysqli
- pdo
- zip

Packages:

- nodejs 9.x
- npm
- wp-cli

### PHP CLI

- Smaller copy of PHP 5.6.30, based on `php:5.6-cli`
- Smaller copy of PHP 7.2.12, based on `php:7.2-cli`

### WordPress

- WordPress 4.9.5 + Apache, based on `wordpress:latest`

### Dev

- The wordpress image used for MP3 development.

## Usage

- `make build version=20180417.1`: to build target Docker images locally
- `make push version=20180417.1`: to push them to the target `mailpoet/wordpress` repository
