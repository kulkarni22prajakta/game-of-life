pipeline{
agent{
  label "built-in"
}
stages{
stage('stage1'){
steps{
//sh "yum install maven -y"
sh "yum install docker -y"
sh "systemctl start docker"
sh "systemctl enable docker"
sh "mvn clean install -DskipTests=true"
sh "docker system prune -a -f"
sh "docker build -t img:1.0 ."
sh "docker run -itdp 700:8080 --name my_server_cont img1.0"
sh "docker exec my_server_cont chmod -R 777 /usr/local/tomcat/webapps/"
}
}
}
}
