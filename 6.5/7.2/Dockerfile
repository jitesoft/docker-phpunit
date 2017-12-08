FROM jitesoft/composer:php-7.2
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"
LABEL php_version="7.2"
LABEL phpunit_version="6.5"

ENV PHPUNITVERSION="^6.5" \
    XDEBUGVERSION="2.6.0alpha1"

# There is no stable xdebug release for php 7.2 yet, so it has to be installed from source.

RUN curl -sS https://xdebug.org/files/xdebug-${XDEBUGVERSION}.tgz | tar -xz -C / \
    && cd /xdebug-${XDEBUGVERSION} \
    && phpize \
    && ./configure --enable-xdebug \ 
    && make \
    && make install \
    && rm -r /xdebug-${XDEBUGVERSION} \
    && docker-php-ext-enable xdebug \
    && composer selfupdate \
    && composer global require "phpunit/phpunit: ${PHPUNITVERSION}" --prefer-source --no-interaction \
    && php -v

WORKDIR /app

ENTRYPOINT ["phpunit"]
CMD ["--help"]
