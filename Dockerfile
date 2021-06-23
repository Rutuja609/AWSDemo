FROM tomcat:8-jre8
MAINTAINER "rutuja"
COPY ./LoginWebApp.war /usr/local/tomcat/webapps/webapp.war
