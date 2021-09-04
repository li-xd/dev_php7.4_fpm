FROM php:7.4-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug redis intl opcache PDO_MySQL

RUN apk add --no-cache git wget 

RUN curl https://getcomposer.org/composer.phar >> /usr/local/bin/composer