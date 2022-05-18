FROM nginx:latest
RUN apt-get update && apt-get install zip unzip -y && apt-get install wget -y
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip
RUN rm -rf /usr/share/nginx/html/index.html
#RUN unzip wedding-v1.0.zip
RUN unzip Uliya Free Website Template - Free-CSS.com.zip
#RUN cp -r  wedding-site-template-1.0/* /usr/share/nginx/html/
RUN cp -r uliya-html/* /usr/share/nginx/html/
RUN chmod +r /usr/share/nginx/html/index.html
RUN service nginx restart
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

#FROM ubuntu:18.04
#RUN apt-get update && apt-get install nginx -y && apt-get install zip unzip -y && apt-get install wget -y
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
#RUN rm -rf /var/www/html/index.nginx-debian.html
#RUN unzip wedding-v1.0.zip
#RUN cp -r  wedding-site-template-1.0/* /var/www/html/
#RUN chmod +r /var/www/html/index.html
#RUN service nginx restart
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
