# WordPress Images

This repository houses Docker images to facilitate automated testing of WordPress plugins on CircleCI.
You can find prebuilt images on Docker Hub: [mailpoet/wordpress](https://hub.docker.com/r/mailpoet/wordpress/)

## Images

### PHP

- PHP 7.1, based on `circleci/php:7.1-apache-browsers`
- PHP 7.4, based on `circleci/php:7.4-apache`

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

- Smaller copy of PHP 7.2.12, based on `php:7.2-cli`

### WordPress

- WordPress 5.2 + Apache, based on `wordpress:5.2`
- WordPress 5.3 + Apache, based on `wordpress:5.3`
- WordPress 5.4 + Apache, based on `wordpress:5.4`

### Dev

- The wordpress image used for MP3 development.

## Usage

First build the image using this command, the second argument is the path to the Dockerfile:
```
docker build -t "mailpoet/wordpress:wp-5.3_php7.3_20200617.1" wp-5.3/php7.3
```


Build multiplatform images and push to the docker hub using this command (more details on PcD9cT-ZO-p2):
```
docker buildx build --platform linux/amd64,linux/arm64 -t "mailpoet/wordpress:wp-5.9_php8.1_20220130.1" wp-5.9/php8.1 --push
```
