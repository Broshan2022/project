FROM ubuntu:latest
RUN apt update && apt install nginx -y
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
ENV ENVIRONMENT=production
cmd ["nginx","-g","daemon off;"]
