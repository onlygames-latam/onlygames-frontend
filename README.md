# Onlygames-docker

This repo holds a dockerized version of the [onlygames.com.ar](https://onlygames.com.ar) website

## Requirements

- `composer.php``
- `docker@^20`
- `nodejs` (optional)

## Installation

1. Clone this repository and `cd onlygames-docker/wp-app`
2. Run `composer install`
3. `cd ../`
4. Run `docker-compose up`

> Plugins & Themes will be automatically download and copied inside `./wp-app/wp-content/`

### Services

#### PhpMyAdmin

Connect using `WORDPRESS_DB_USER` & `WORDPRESS_DB_PASSWORD`


## Oracle OCI

#### Run `sudo`

- You can directly run sudo or use sudo su
- `cd var/www/`