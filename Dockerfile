FROM php:5.6-apache
MAINTAINER Sohrab Khan <sohrab@sohrabkhan.com>

RUN docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql
ADD public_html/ /var/www/html/

#RUN composer install

EXPOSE 80