FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./build/libs/boot-gradle.war app.war
ENV JAVA_OPTS=""