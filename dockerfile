# Use official Tomcat 9 base image
FROM tomcat:9.0

# Remove default web applications (optional cleanup)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory as ROOT.war
COPY myweb.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
