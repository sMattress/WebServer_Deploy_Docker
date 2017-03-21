FROM tomcat:8-jre8
MAINTAINER zhang.fly@hotmail.com

RUN rm -rf /usr/local/tomcat/webapps
ADD project /usr/local/tomcat/webapps

RUN echo "Asia/Shanghai" > /etc/timezone

ADD resources/server.xml /usr/local/tomcat/conf
ADD resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
RUN mkdir /usr/local/tomcat/keys
ADD resources/certificate.crt /usr/local/tomcat/keys
ADD resources/private.key /usr/local/tomcat/keys