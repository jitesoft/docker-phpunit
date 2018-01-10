FROM jitesoft/composer:php-7.0
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"
LABEL php_version="7.0"
LABEL phpunit_version="5.7"

ENV PHPUNITVERSION="^5.7"

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && composer selfupdate \
    && composer global require "phpunit/phpunit: ${PHPUNITVERSION}" --prefer-source --no-interaction \
    && php -v

WORKDIR /app

CMD ["phpunit"]
