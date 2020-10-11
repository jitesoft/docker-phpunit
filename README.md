# PHPUnit

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/phpunit.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/phpunit)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

Image includes php (cli), [composer](https://getcomposer.org/), [xdebug](https://xdebug.org/) and [phpunit](https://phpunit.de/).  
It's derived from [`jitesoft/composer`](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/blob/master/Dockerfile).

## Tags

Each version has a base tag of `php_version-phpunit_version` where php version is major and minor version (I.E., 7.3, 7.2 etc) and phpunit is the major version (I.E., 9, 8 etc).  
The `latest` and `stable` images are using the latest version of php and phpunit, all includes composer and xdebug.

Each tag is built for amd64 and arm64.

### Docker Hub

* `jitesoft/phpunit`
    * `7.4-9`, `stable`, `latest`, `7.4`
    * `7.4-8`
    * `7.3-8`, `7.3`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/phpunit`
    * `7.4-9`, `stable`, `latest`, `7.4`
    * `7.4-8`
    * `7.3-8`, `7.3`

### GitHub

* `ghcr.io/jitesoft/phpunit`
    * `7.4-9`, `stable`, `latest`, `7.4`
    * `7.4-8`
    * `7.3-8`, `7.3`

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/blob/master/Dockerfile) or [GitHub](https://github.com/jitesoft/docker-phpunit/blob/master/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

The files in this repository are released under the MIT License.  
Composer is released under the [MIT](https://github.com/composer/composer/blob/master/LICENSE) license.  
Read the PHP license [here](https://www.php.net/license/index.php).  
Read the phpunit license [here](https://github.com/sebastianbergmann/phpunit/blob/master/LICENSE).
