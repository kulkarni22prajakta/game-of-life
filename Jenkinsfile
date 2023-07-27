pipeline{
agent{
label "built-in"
}
stages{
stage(stage1){
steps{
sh "yum install maven -y"
sh "mvn clean install -DskipTests=true"
sh "yum install docker -y"
sh "systemctl start docker"
sh "docker build -t my_server_img ."
sh "docker stop my_server_cont"
sh "docker system prune -a -f"
sh "docker run -itdp 651:8080 --name my_server_cont my_server_img"
sh "docker exec my_server_cont2 chmod -R 777 /usr/local/tomcat/webapps/"
}
}
}
}
