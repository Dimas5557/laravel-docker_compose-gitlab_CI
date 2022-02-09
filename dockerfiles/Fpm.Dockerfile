FROM php:8.1-fpm

RUN apt-get update \
&& docker-php-ext-install pdo pdo_mysql
ADD ./ /var/www/laravel-docker
WORKDIR /var/www/laravel-docker
RUN curl -sS https://getcomposer.org/installer | php 
RUN apt install zip unzip
RUN chmod o+w ./ -R
RUN php composer.phar install
RUN cp .env.example .env 
RUN php artisan key:generate
