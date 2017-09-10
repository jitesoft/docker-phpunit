# PHPUnit

Alpine linux as base.  
Includes php7.1 (fpm), composer, xdebug and phpunit.  
  

## Tags
`6.3`, `6.3-php-7.1`, `latest` - ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/master/Dockerfile)) (Stable)  
`6.3-php-7.0` - ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/6.3-php-7.0/Dockerfile))  
`5.7`, `5.7-php-7.1` - ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/5.7/Dockerfile))  
`5.7-php-7.0` - ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/5.7-php-7.0/Dockerfile))  
`5.7-php-5.6` - ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/5.7-php-5.6/Dockerfile))  

## Usage

Enter directory wich to test. Run desired phpunit command:  
  
```
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```