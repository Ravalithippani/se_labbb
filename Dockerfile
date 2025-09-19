# Use Tomcat 9 as base image
FROM tomcat:9.0

# Copy your built WAR into Tomcat’s webapps folder
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Start Tomcat
CMD ["catalina.sh", "run"]


//New docker 

FROM tomcat:9.0-jdk11-openjdk-slim
COPY target/CampusMgmtSystem.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]