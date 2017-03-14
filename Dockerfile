FROM tomcat:8-jre8

RUN rm -rf /usr/local/tomcat/webapps/IntelligentMattress
ADD webapp /usr/local/tomcat/webapps

RUN rm -rf /build-resources
ADD build-resources /build-resources

RUN cp /build-resources/server.xml /usr/local/tomcat/conf
RUN cp /build-resources/java.security /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
