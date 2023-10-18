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

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/phpunit`

### GitHub

* `ghcr.io/jitesoft/phpunit`

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/composer-alpine/blob/master/Dockerfile) or [GitHub](https://github.com/jitesoft/docker-phpunit/blob/master/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```
### Debugging
To get Xdebug to turn on its debugger you will need to set the environmental variable XDEBUG_MODE.

```bash
docker run --rm -e XDEBUG_MODE=debug -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```
Or in docker compose:

```yml
phpunit:
    container_name: phpunit
    image: jitesoft/phpunit:8.2
    environment:
      - "XDEBUG_MODE=debug"
    volumes:
      - "./php:/app/"
      - "./conf/phpunit/docker-php-ext-xdebug.ini:/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini"
      - "./conf/phpunit/xdebug.log:/var/log/xdebug.log"
```

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

The files in this repository are released under the MIT License.  
Composer is released under the [MIT](https://github.com/composer/composer/blob/master/LICENSE) license.  
Read the PHP license [here](https://www.php.net/license/index.php).  
Read the phpunit license [here](https://github.com/sebastianbergmann/phpunit/blob/master/LICENSE).

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://fosshost.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshost.png" height="128" alt="Fosshost logo" />
</a>
<a href="https://www.aarch64.com/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/aarch64.png" height="128" alt="Aarch64 logo" />
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)
