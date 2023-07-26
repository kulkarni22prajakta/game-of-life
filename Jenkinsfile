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
sh "docker run -itd --name my_server_cont my_server_img"
}
}
}
}
