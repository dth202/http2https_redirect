# python:alpine is 3.{latest}
FROM nginx

LABEL maintainer="Dallas Harris"

COPY conf.d/* /etc/nginx/conf.d/



