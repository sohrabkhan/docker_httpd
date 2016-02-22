# Docker Httpd
Create a docker httpd container with PHP5.6 including the php5-mysql, php-mysql, php-common, pdo, mysqli and mbstring extensions.

## LAMPR
To setup your PHP5.6, mysql & redis project in 1 minute run the following commands:

    > git clone git@github.com:sohrabkhan/docker_httpd.git
    > docker-compose up (make sure docker-compose is installed)

With only 2 commands you have your dev environment setup.

## HTTPD Only
If you want to run this image individually then do the following:
    > docker run -d -p 80:80 -v $PWD/public_html:/var/www/html sohrabkhan/httpd

### Note: this is a base image that I use for some of my most simplest projects.
