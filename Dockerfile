FROM ubuntu:latest
LABEL org.opencontainers.image.authors="Marcin Wojcik <wojcikmarcin49@gmail.com>"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apache2
COPY index.html /var/www/html/index.html
EXPOSE 8080
CMD ["apachectl", "-D", "FOREGROUND"]







