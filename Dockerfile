FROM jitesoft/composer:php-7.2
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ENV PHPUNITVERSION="^6.3"

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && composer selfupdate \
    && composer global require "phpunit/phpunit: ${PHPUNITVERSION}" --prefer-source --no-interaction \
    && php -v

WORKDIR /app

ENTRYPOINT ["phpunit"]
CMD ["--help"]
