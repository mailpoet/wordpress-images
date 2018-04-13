# WordPress Images

This repository houses Docker images to facilitate automated testing of WordPress plugins on CircleCI.
You can find prebuilt images on Docker Hub: [mailpoet/wordpress](https://hub.docker.com/r/mailpoet/wordpress/)

Extensions:

- mysqli
- pdo
- zip

Packages:

- nodejs 6.x
- npm
- wp-cli


## Usage

- `make build`: to build target Docker images locally
- `make push`: to push them to the target `mailpoet/wordpress` repository
