FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/IntelligentMattress
ADD webapp /usr/local/tomcat/webapps

ADD build-resources/server.xml /usr/local/tomcat/conf
ADD build-resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security

RUN rm -rf /usr/local/tomcat/keys
RUN mkdir /usr/local/tomcat/keys
ADD build-resources/certificate.crt /usr/local/tomcat/keys
ADD build-resources/private.key /usr/local/tomcat/keys

ADD /etc/localtime /etc/localtime
