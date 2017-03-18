FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps
ADD project /usr/local/tomcat/webapps

ADD resources/server.xml /usr/local/tomcat/conf
ADD resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
ADD resources/certificate.crt /usr/local/tomcat/keys
ADD resources/private.key /usr/local/tomcat/keys
