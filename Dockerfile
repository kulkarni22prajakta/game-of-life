# Use an official OpenJDK image as the base
FROM openjdk:8-jdk-alpine

# Set environment variables
ENV TOMCAT_VERSION 9.0.54
ENV CATALINA_HOME /usr/local/tomcat

# Download and install Tomcat
RUN wget -q https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz -C /usr/local && \
    mv /usr/local/apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME} && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["${CATALINA_HOME}/bin/catalina.sh", "run"]



