
FROM php:7.4-apache
COPY index.html /var/www/html/
COPY script.php /var/www/html/
EXPOSE 80
