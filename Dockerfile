# From Source : https://github.com/richarvey/nginx-php-fpm
FROM richarvey/nginx-php-fpm:1.5.7

COPY .docker/nginx/default.conf /etc/nginx/sites-available/default.conf
COPY .docker/nginx/default-ssl.conf /etc/nginx/sites-available/default-ssl.conf

#RUN rm -Rf /var/www \
#    && mkdir -p /var/code \
#    && mkdir -p /var/log/errors

COPY . /var/www
