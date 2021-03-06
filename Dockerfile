FROM yejune/webserver:7.0.17

ARG BUILD_NUMBER

ENV BUILD_NUMBER ${BUILD_NUMBER:-v0.0.1}

ENV FPM_LISTEN /dev/shm/php-fpm.sock

ENV FASTCGI_PASS unix:/dev/shm/php-fpm.sock

ENV BUILD_TAG ${IMAGE_TAG}

COPY ./ /var/www/
