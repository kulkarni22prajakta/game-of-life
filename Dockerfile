FROM tomcat:9.0.78
COPY /root/.jenkins/workspace/docker-compose-deploy@2/gameoflife-web/target/gameoflife.war root@3.110.167.253:/usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
