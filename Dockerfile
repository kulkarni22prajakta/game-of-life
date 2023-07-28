FROM tomcat:9.0.78
COPY /root/.jenkins/workspace/docker-compose-deploy@2/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
