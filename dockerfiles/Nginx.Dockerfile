FROM nginx

ADD dockerfiles/conf/vhost.conf  /etc/nginx/conf.d/default.conf 

WORKDIR /var/www/laravel-docker

