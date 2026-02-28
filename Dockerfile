# Base image — Tomcat 9 with Java 11
FROM tomcat:9.0-jdk11

# Creator info
LABEL maintainer="yuvraj9799"

# Default webapps delete करा
RUN rm -rf /usr/local/tomcat/webapps/*

# WAR file copy करा
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Port expose करा
EXPOSE 8080

# Tomcat start करा
CMD ["catalina.sh", "run"]
