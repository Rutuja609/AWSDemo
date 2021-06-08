#Pull base image
FROM tomcat:8-jre8

#Maintainer
MAINTAINER "vishwasraorutuja@gmail.com"

#Copy war file on to container
COPY ./LoginWebApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
