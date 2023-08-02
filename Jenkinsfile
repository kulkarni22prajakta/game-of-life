pipeline{
agent{
  label "built-in"
}
stages{
stage('stage1'){
steps{
//sh "yum install java-1.8.0-openjdk-devel.x86_64"
sh "yum install maven -y"
sh "amazon-linux-extras install ansible2 -y"
/*sh "yum install docker -y"
sh "systemctl start docker"
sh "systemctl enable docker"*/
sh "mvn clean install -DskipTests=true"
/*sh "docker system prune -a -f"
sh "docker-compose up"*/
sh "sudo su - prajakta"
sh "sudo ansible-playbook velocity.yaml"
}
}
}
}
