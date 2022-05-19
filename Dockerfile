FROM ubuntu:18.04
RUN apt-get update && apt-get install nginx -y && apt-get install zip unzip -y && apt-get install wget -y
RUN service nginx restart
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip
#RUN rm -rf /var/www/html/index.nginx-debian.html
#RUN unzip wedding-v1.0.zip
#RUN unzip beauty.zip
#RUN cp -r  wedding-site-template-1.0/* /var/www/html/
#RUN cp -r  templatemo_519_beauty/* /var/www/html/
#RUN chmod +r /var/www/html/index.html


#FROM ubuntu:latest
#RUN apt update
#RUN apt install -y apache2
#RUN apt install -y zip
#RUN apt install -y unzip 
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#WORKDIR /var/www/html
#RUN unzip beauty.zip
#RUN cp -rvf templatemo_519_beauty/* .
#RUN rm -rf templatemo_519_beauty beauty.zip 
#RUN unzip photogenic.zip
#RUN cp -rvf photogenic/* .
#RUN rm -rf photogenic photogenic.zip 
#CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
#CMD ["/etc/init.d/apache2", "-D",  "FOREGROUND"]
#ENTRYPOINT ["/usr/sbin/apache2"]
#CMD ["-D", "FOREGROUND"]
#EXPOSE 80



#FROM ubuntu:18.04
#RUN apt-get update && apt-get install nginx -y && apt-get install zip unzip -y && apt-get install wget -y
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
#RUN rm -rf /var/www/html/index.nginx-debian.html
#RUN unzip wedding-v1.0.zip
#RUN cp -r  wedding-site-template-1.0/* /var/www/html/
#RUN chmod +r /var/www/html/index.html
#RUN service nginx restart
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
