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
    * `8-9`, `stable`, `latest`, `8.0`
    * `7.4-9`, `7.4`
    * `7.4-8`
    * `7.3-8`, `7.3`

### GitLab

* `registry.gitlab.com/jitesoft/dockerfiles/phpunit`
    * `8-9`, `stable`, `latest`, `8.0`
    * `7.4-9`, `7.4`
    * `7.4-8`
    * `7.3-8`, `7.3`

### GitHub

* `ghcr.io/jitesoft/phpunit`
    * `8-9`, `stable`, `latest`, `8.0`
    * `7.4-9`, `7.4`
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

## Sponsors

Sponsoring is vital for the further development and maintaining of open source projects.  
Questions and sponsoring queries can be made via <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://www.linaro.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/linaro.png" width="256" alt="Linaro logo" />
</a>
<a href="https://fosshost.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshost.png" width="256" alt="Fosshost logo" />
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._
