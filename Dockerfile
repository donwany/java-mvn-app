FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app

COPY ./target/java-mvn-app-1.0-SNAPSHOT.jar /usr/app/

ENTRYPOINT ["java", "-jar", "java-mvn-app-1.0-SNAPSHOT.jar"]
