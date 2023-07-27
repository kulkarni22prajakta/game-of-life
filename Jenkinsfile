pipeline{
agent any
stages{
stage('stage1'){
agent{
label "built-in"
}
steps{
sh "mkdir /mnt/my_git"
sh "git clone https://github.com/kulkarni22prajakta/game-of-life.git -b master"
sh "yum install maven -y"
sh "mvn clean install -DskipTests=true"
}
}
stage('stage2'){
agent{
label "slave1"
}
steps{
sh "sudo yum install git -y"
sh "sudo yum install docker -y"
sh "sudo systemctl start docker"
sh "sudo systemctl enable docker"
sh "sudo docker system prune -a -f"
sh "sudo docker build -t img:2.0 ."
sh "sudo docker run -itdp 770:8080 --name my_server_cont img:2.0"
sh "sudo docker exec my_server_cont chmod -R 777 apache-tomcat-9.0.76/webapps/"
//sh "docker ps -a"
}
}
}
}
