FROM php:8.1-apache

COPY conf/apache2 /etc/apache2

WORKDIR /var/www/html
COPY src/index.php index.php

EXPOSE 8080
