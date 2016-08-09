#!/bin/bash

docker stop nginx
docker rm nginx
docker run -d -v $PWD:/usr/share/nginx/html -v $PWD/app-nginx.conf:/etc/nginx/conf.d/default.conf -p 80:80 --name nginx nginx
