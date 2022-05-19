FROM ubuntu:latest
RUN apt update
RUN apt install -y apache2
RUN apt install -y zip
RUN apt install -y unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip beauty.zip
RUN cp -rvf templatemo_519_beauty/* .
RUN rm -rf templatemo_519_beauty beauty.zip 
#RUN unzip photogenic.zip
#RUN cp -rvf photogenic/* .
#RUN rm -rf photogenic photogenic.zip 
#CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
#CMD ["/etc/init.d/apache2", "-D",  "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
