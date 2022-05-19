FROM ubuntu:18.04
RUN apt-get update && apt-get install nginx -y && apt-get install zip unzip -y && apt-get install wget -y
RUN service nginx restart
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8001:80
