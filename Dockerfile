FROM openjdk:8
ADD target/LoginWebApp.war LoginWebApp.war
EXPOSE 9000
ENTRYPOINT ["java", "-war", "LoginWebApp.war"]
