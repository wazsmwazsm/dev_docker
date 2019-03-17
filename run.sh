#!/bin/bash

code_path="/home/mrq/code/your_project"
nginx_path="/home/mrq/code/docker/nginx_conf"

docker run -p 8080:80 --name nginx -v ${code_path}:/www -v ${nginx_path}:/etc/nginx/conf.d -d nginx
docker run -p 9000:9000 --name php-fpm -v ${code_path}:/var/www/html -d myphp:5.6-fpm