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
                terraform init
                terraform apply -auto-approve
                '''
            }
        }
    }
}
