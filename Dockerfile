FROM php:apache
COPY ./src /var/www/html
RUN chown -R www-data:www-data /var/www/html

#update 
RUN apt-get update 

#install curl
RUN apt-get install curl

#install unzip
RUN apt-get install unzip
#isntall mysql
RUN docker-php-ext-install mysqli
#install composer
RUN  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
