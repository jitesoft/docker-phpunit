FROM jite/composer:latest
MAINTAINER Johannes Tegnér <johannes@jitesoft.com>

ENV PHPUNITVERSION ^6.0

RUN /composer/composer.phar selfupdate && \
    /composer/composer.phar global require "phpunit/phpunit: $PHPUNITVERSION" --prefer-source --no-interaction

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["phpunit"]
CMD ["--help"]
