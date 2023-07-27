# Use an official OpenJDK image as the base
FROM openjdk:8-jdk-alpine

# Download and install Tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.zip 
RUN unzip apache-tomcat-9.0.76.zip 
RUN chmod -R 777 apache-tomcat-9.0.76/
RUN rm -rf apache-tomcat-9.0.76.zip

COPY gameoflife-web/target/gameoflife.war apache-tomcat-9.0.76/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["${CATALINA_HOME}/bin/catalina.sh", "run"]



