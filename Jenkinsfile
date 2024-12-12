pipeline{
agent any
stages{
stage('stage1'){
steps{
/*
sh "sudo su - prajakta"
sh "sudo yum install java-1.8.0-openjdk-devel.x86_64"
sh "sudo yum install maven -y"
sh "sudo amazon-linux-extras install ansible2 -y"
sh "sudo yum install git -y"
/*sh "yum install docker -y"
sh "systemctl start docker"
sh "systemctl enable docker"*/
sh "sudo mvn clean install -DskipTests=true"
/*sh "docker system prune -a -f"
sh "docker-compose up"*/
sh "sudo ansible-playbook velocity.yaml"
*/
sh "hello all. welcome to jenkins"  
}
}
}
}
