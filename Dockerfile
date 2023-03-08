FROM openjdk:8-jre-alpine

EXPOSE 8080

# COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
COPY ./target/testeCICDActionDocker-0.1.0.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "testeCICDActionDocker-0.1.0.jar"]