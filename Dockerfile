FROM centos:latest
RUN yum update -y
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip 
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/beauty.zip /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
# RUN unzip beauty.zip
# RUN cp -rvf templatemo_519_beauty/* .
# RUN rm -rf templatemo_519_beauty beauty.zip 
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
