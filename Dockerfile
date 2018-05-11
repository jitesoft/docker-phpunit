ARG PHP_VERSION='7.2'
ARG UNIT_VERSION='^7'
FROM jitesoft/composer:${PHP_VERSION}
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ENV PHP_VERSION="${PHP_VERSION}" \
    UNIT_VERSION="${UNIT_VERSION}"

RUN apk add --no-cache --virtual .build-deps make libc-dev gcc autoconf \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && composer global require "phpunit/phpunit ${UNIT_VERSION}" --prefer-source --no-interaction \
    && apk del .build-deps

WORKDIR /app

CMD ["phpunit"]
