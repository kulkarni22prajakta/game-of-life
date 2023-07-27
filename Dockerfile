FROM tomcat:9.0.78
COPY /mnt/my_git/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
