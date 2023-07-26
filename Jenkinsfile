pipeline{
agent{
label "built-in"
}
stages{
stage(stage1){
steps{
sh "chmod -R 777 /mnt"
sh "cd /mnt"

sh "yum install maven -y"
sh "mvn"
sh "rm -rf game-of-life"
sh "git clone https://github.com/kulkarni22prajakta/game-of-life.git -b master"
sh "chmod -R 777 game-of-life"
sh "cd game-of-life/"
sh "mvn clean install -X"

sh "cd"
sh "yum install docker -y"
sh "systemctl start docker"

sh "docker build -t my_server_img /root/.jenkins/workspace/docker_assignment1/"
//sh "docker run -itd --name my_server_cont my_server_img"
sh "docker run -itd --name my_server_cont my_server_img"
}
}
}
}
