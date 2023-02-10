FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get install -y git

ADD git clone https://github.com/frikishaan/bootsapp.git bootsapp
COPY ./bootsapp /var/www/html

EXPOSE 80
 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

