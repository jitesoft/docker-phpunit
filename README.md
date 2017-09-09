# PHPUnit

Alpine linux as base.  
Includes php7.1 (fpm), composer, xdebug and phpunit.  
  

## Tags
`6.3`, `latest` ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/6.3/Dockerfile))  
`5.7` ([Dockerfile](https://github.com/jitesoft/docker-phpunit/blob/5.7/Dockerfile))


## Usage

Enter directory wich to test. Run desired phpunit command:  
  
```
docker run --rm -v $(pwd):/app jitesoft/phpunit --configuration phpunit.xml
```