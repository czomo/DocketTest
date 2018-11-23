#pobranie obrazu ubuntu
FROM ubuntu:latest
#aktualizacje
RUN apt-get update -y
#instalacja apache
RUN apt-get install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
