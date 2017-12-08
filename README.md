# PHPUnit

Image includes php (fpm), [composer](https://getcomposer.org/), [xdebug](https://xdebug.org/) and [phpunit](https://phpunit.de/).

## Tags

* `6.5`, `6.5-php-7.2`, `latest` - [6.5/7.2/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.2/Dockerfile) (uses xdebug `2.6.0alpha1`)
* `6.5-php-7.1` - [6.5/7.1/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.1/Dockerfile)
* `6.5-php-7.0` - [6.5/7.0/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.0/Dockerfile)
* `5.7`, `5.7-php-7.1` - [5.7/7.1/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/5.7/7.1/Dockerfile)
* `5.7-php-7.0` - [5.7/7.0/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/5.7/7.0/Dockerfile)
* `5.7-php-5.6` - [5.7/5.6/Dockerfile](https:/github.com/jitesoft/docker-phpunit/blob/master/5.7/5.6/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```