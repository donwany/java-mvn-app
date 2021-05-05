FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/java-docker-jenkins-app.jar /usr/app/

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-docker-jenkins-app.jar"]
