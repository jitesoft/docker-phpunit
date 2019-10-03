ARG PHP_VERSION
FROM registry.gitlab.com/jitesoft/dockerfiles/composer-alpine/cli:${PHP_VERSION}
ARG UNIT_VERSION
LABEL com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/phpunit" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/phpunit/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/phpunit" \
      com.jitesoft.app.phpunit.version="${UNIT_VERSION}"

COPY ./phpunit.phar /usr/local/bin/phpunit

RUN apk add --no-cache --virtual .build-deps make libc-dev gcc autoconf \
 && pecl install xdebug \
 && php-ext enable xdebug \
 && apk del .build-deps \
 && chmod +x /usr/local/bin/phpunit \
 && phpunit --version \
 && php -v

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["entrypoint"]
CMD ["phpunit"]
