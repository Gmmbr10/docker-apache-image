FROM alpine:latest

RUN apk add php apache2 php-apache2 php-mysqli php-pdo && rm /var/www/localhost/htdocs/index.html && echo "DirectoryIndex index.php index.html" >> /etc/apache2/httpd.conf

WORKDIR /var/www/localhost/htdocs/

COPY . /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd","-D","FOREGROUND"]
