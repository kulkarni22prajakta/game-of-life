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
sh "docker run -itdp 81:8080 --name my_server_cont1 my_server_img"
}
}
}
}
