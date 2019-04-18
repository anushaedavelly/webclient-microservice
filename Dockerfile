FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 2222
ARG JAR_FILE=target/com.doj.web-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} web.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/web.jar"]
