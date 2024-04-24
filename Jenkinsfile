pipeline{
    agent any
    stages{
        stage("git checkout stage"){
            steps{
                git url:'https://github.com/sanju02g/devops_auto.git' , branch:'kubernetes'
            }
        }
        stage("tearraform stage"){
            steps{
                sh ''' 
                #!/bin/bash
                chmod u+r ./modules/minikey.pem
                sudo cd /home/ec2-user/.ssh
                chmod u+r ./*
                cd /var/jenkins_home/workspace/kubernetes
                terraform init
                terraform apply -auto-approve
                '''
            }
        }
    }
}
