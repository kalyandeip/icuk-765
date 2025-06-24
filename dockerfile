# Use the official Tomcat base image
FROM tomcat:9.0

# Remove default webapps (optional, for a clean deploy)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY path/to/myweb.war /usr/local/tomcat/webapps/ROOT.war


# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
