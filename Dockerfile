FROM tomcat:9.0.78
COPY /gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
