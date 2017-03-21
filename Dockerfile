FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/IntelligentMattress
ADD webapp /usr/local/tomcat/webapps
RUN rm -rf /usr/local/tomcat/webapps
ADD project /usr/local/tomcat/webapps

<<<<<<< HEAD
ADD build-resources/server.xml /usr/local/tomcat/conf
ADD build-resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security

RUN rm -rf /usr/local/tomcat/keys
RUN mkdir /usr/local/tomcat/keys
ADD build-resources/certificate.crt /usr/local/tomcat/keys
ADD build-resources/private.key /usr/local/tomcat/keys

RUN echo "Asia/Shanghai" > /etc/timezone
=======
ADD resources/server.xml /usr/local/tomcat/conf
ADD resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
ADD resources/certificate.crt /usr/local/tomcat/keys
ADD resources/private.key /usr/local/tomcat/keys
>>>>>>> master
