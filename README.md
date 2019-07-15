# PHPUnit

Image includes php (cli), [composer](https://getcomposer.org/), [xdebug](https://xdebug.org/) and [phpunit](https://phpunit.de/).  
It's derived from [`jitesoft/composer:x-cli`](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/blob/master/Dockerfile).

## Tags

Each version has a base tag of <php-version>-<php-unit-version> where php version is major and minor version (I.E., 7.3, 7.2 etc) and phpunit is the major version (I.E., 8, 7 etc).  
The `latest` and `stable` images are using the latest version of php and phpunit, all includes composer and xdebug.

### Docker Hub

* `7.3-8`, `stable`, `latest`
* `7.2-8`
* `7.3-7`
* `7.2-7`

### Unmaintained tags

* `7.1-7`
* `7.2-6`
* `7.1-6`
* `7.0-6`

### Git Lab

* `registry.gitlab.com/jitesoft/dockerfiles/phpunit`
  * `7.3-8`, `latest`, `stable`, `7.3`
  * `7.3-7`
  * `7.2-8`, `7.2`
  * `7.2-7`


Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/blob/master/Dockerfile) or [GitHub](https://github.com/jitesoft/docker-phpunit/blob/master/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).
