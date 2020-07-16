FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./build/libs/boot-gradle.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-jar","/app.jar"]