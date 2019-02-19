FROM php:5.6-apache
EXPOSE 80
WORKDIR /var/www/html/
COPY . /var/www/html
COPY images/ /var/www/html/images
RUN ln -s /var/www/html /var/www/html/speedtest
CMD ["/usr/local/bin/apache2-foreground"]
