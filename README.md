# WordPress Images

This repository houses Docker images to facilitate automated testing of WordPress plugins on CircleCI.
You can find prebuilt images on Docker Hub: [mailpoet/wordpress](https://hub.docker.com/r/mailpoet/wordpress/)

## Images

### PHP

- PHP 5.6.30
- PHP 7.1

Extensions:

- bcmath
- mysqli
- pdo
- zip

Packages:

- nodejs 6.x
- npm
- wp-cli

### WordPress

- WordPress 4.9.5 + Apache

## Usage

- `make build`: to build target Docker images locally
- `make push`: to push them to the target `mailpoet/wordpress` repository
