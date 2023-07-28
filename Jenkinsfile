pipeline{
agent any
stages{
stage(stage1){
agent{
label "built-in"
}
steps{
//sh "yum install maven -y"
//sh "mvn clean install -DskipTests=true"
sh "scp -r /root/.jenkins/workspace/docker-compose-deploy@2/gameoflife-web/target/gameoflife.war root@3.110.167.253:/mnt/jslave/workspace/docker-compose-deploy/"
}
}
stage(stage2){
agent{
label "slave1"
}
steps{
sh "chmod -R 777 /mnt"
sh "sudo yum install docker -y"
sh "sudo systemctl start docker"
sh "sudo chmod -R 777 /var/run/docker.sock"
sh "docker system prune -a -f"
sh "docker build -t my_server_img ."
sh "docker run -itdp 651:8080 --name my_server_cont my_server_img"
sh "docker exec my_server_cont chmod -R 777 apache-tomcat-9.0.76/webapps/"
}
}
}
}
