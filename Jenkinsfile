pipeline{
agent{
  label "built-in"
}
stages{
stage('stage1'){
steps{
/*sh "yum install maven -y"
sh "yum install docker -y"
sh "systemctl start docker"
sh "systemctl enable docker"*/
sh "mvn clean install -DskipTests=true"
sh "docker system prune -a -f"
sh "docker-compose up"
}
}
}
}
