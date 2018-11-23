#pobranie obrazu ubuntu
FROM ubuntu:latest
#aktualizacje
RUN apt-get update -y
#instalacja apache
RUN apt-get install apache2 -y
#przekierowanie na port
EXPOSE 80#tworzenie wolumenu
VOLUME /var/www/html
#skopiowanie pliku html
COPY ./index.html /var/www/html
#uruchomienie apache
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
