# PHPUnit

Image includes php (fpm), [composer](https://getcomposer.org/), [xdebug](https://xdebug.org/) and [phpunit](https://phpunit.de/).

## Tags

Each version has a base tag of <php-version>-<php-unit-version> where php version is major and minor version (I.E., 7.2, 7.1 etc) and phpunit is the major version (I.E., 7, 6 etc).  
The `latest` and `stable` images are using the latest version of php and phpunit, all includes composer and xdebug.

* `7.2-7`, `stable`, `latest`
* `7.1-7`
* `7.2-6`
* `7.1-6`
* `7.0-6`

All tags are based on the same image which can be found [here](https://github.com/jitesoft/docker-phpunit/blob/master/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```
