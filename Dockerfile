FROM openjdk:8
ADD LoginWebApp.war LoginWebApp.war
EXPOSE 9000
ENTRYPOINT ["java", "-war", "LoginWebApp.war"]
