FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get update -y

RUN apt-get install -y apache2-utils
RUN apt-get update -y 

COPY . /var/www/html/
EXPOSE 80

ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
