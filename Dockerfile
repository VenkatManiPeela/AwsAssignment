FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get install apt-utils
    apt-get install -y git
 
COPY git clone https://github.com/frikishaan/bootsapp.git /var/www/html

EXPOSE 80
 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

