FROM ubuntu:latest

RUN sudo apt-get update && \
    sudo apt-get install -y apache2 && \
    sudo apt-get install apt-utils
    sudo apt-get install -y git
 
COPY git clone https://github.com/frikishaan/bootsapp.git /var/www/html

EXPOSE 80
 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

