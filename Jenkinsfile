pipeline{
agent{
label "built-in"
}
stages{
stage(stage1){
steps{
sh "yum install maven -y"
sh "mvn clean install -DskipTests=true"
}
}
stage(stage2){
agent{
label "slave1"
}
steps{
sh "sudo yum install docker -y"
sh "sudo systemctl start docker"
sh "docker ps -a"
sh "docker system prune -a -f"
sh "docker ps -a"
sh "docker build -t my_server_img ."
sh "docker run -itdp 651:8080 --name my_server_cont my_server_img"
//sh "docker exec my_server_cont chmod -R 777 apache-tomcat-9.0.76/webapps/"
//sh "docker ps -a"
}
}
}
}
