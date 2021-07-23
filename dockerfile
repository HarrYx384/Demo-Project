FROM ubuntu:14.04
MAINTAINER vikash@gmail.com
RUN apt-get install -y apache2 \
    zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/lamoda.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip lamoda.zip
RUN cp -rvf lamoda/* .
RUN rm -rf lamoda.zip lamoda
CMD service apache2 start
CMD service apache2 enable
EXPOSE 80 
