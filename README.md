# PHPUnit

Image includes php (fpm), [composer](https://getcomposer.org/), [xdebug](https://xdebug.org/) and [phpunit](https://phpunit.de/).

## Tags

Tags are formatted with `php_version-php_unit_version`. Some of the tags only use the php version and the latest stable also use the php unit version as a single tag.  
Using `latest` or `stable` should make sure that php unit and php is as up to date as possible.

* `6.5`, `7.2`, `7`, `7-6.5`, `7.2-6.5`, `stable`, `latest` - [6.5/7.2/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.2/Dockerfile) (uses xdebug `2.6.0beta1`)
* `7.1`, `7.1-6`, `7.1-6.5` - [6.5/7.1/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.1/Dockerfile)
* `7.0`, `7.0-6`, `7.0-6.5` - [6.5/7.0/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/6.5/7.0/Dockerfile)
* `7.1-5.7` - [5.7/7.1/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/5.7/7.1/Dockerfile)
* `7.0-5.7` - [5.7/7.0/Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/5.7/7.0/Dockerfile)
* `5.6-5.7`, `5` - [5.7/5.6/Dockerfile](https:/github.com/jitesoft/docker-phpunit/blob/master/5.7/5.6/Dockerfile)

## Usage

Enter directory in which you intend to run phpunit from. Run the desired command with:

```bash
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```
