#Pull base image
FROM centos:latest

#Maintainer
MAINTAINER "vishwasraorutuja@gmail.com"
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#Copy war file on to container
#COPY ./LoginWebApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
