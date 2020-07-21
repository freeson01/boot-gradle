#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ADD ./build/libs/boot-gradle.jar app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT ["java","-jar","/app.jar"]
#ADD ./build/libs/gradle-web-nodb.jar app.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN mkdir /tomcat
ADD ./tomcat/apache-tomcat-8.5.57.tar.gz /tomcat/
RUN rm -rf /tomcat/apache-tomcat-8.5.57/webapps/*
ADD ./build/libs/gradle-web-nodb.war /tomcat/apache-tomcat-8.5.57/webapps/ROOT.war
ENV JAVA_OPTS=""
ENTRYPOINT ["/tomcat/apache-tomcat-8.5.57/bin/catalina.sh","run"]