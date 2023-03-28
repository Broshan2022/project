FROM ubuntu:latest
RUN apt update && apt install nginx -y
COPY . /usr/share/nginx/html
COPY . /var/www/html
ENV ENVIRONMENT=production
cmd ["nginx","-g","daemon off;"]
