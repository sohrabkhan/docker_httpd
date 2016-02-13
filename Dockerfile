FROM php:5.6-apache
MAINTAINER Sohrab Khan <sohrab@sohrabkhan.com>

# Install IonCube Loader
RUN apt-get update && apt-get upgrade -yqq
RUN apt-get install -y wget
RUN wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
RUN tar zxvf ioncube_loaders_lin_x86-64.tar.gz
RUN mv ioncube/ioncube_loader_lin_5.6_ts.so /usr/local/lib/php/extensions/no-debug-non-zts-20131226/
RUN touch ioncube.ini && echo "extension=ioncube_loader_lin_5.6_ts.so" >> ioncube.ini

# Install Sass
RUN apt-get install -y rubygems
RUN su -c "gem install sass"


RUN docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql mbstring
RUN a2enmod rewrite
ADD public_html/ /var/www/html/

#RUN composer install

EXPOSE 80