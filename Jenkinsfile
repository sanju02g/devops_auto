pipeline{
    agent any
    parameters{
        choice(name: 'terraform_command', choices: ['apply','destroy'], description: 'created for terrfaorm')
    }
    stages{
        stage("validating"){
            steps{
                echo "value is ${params.terraform_command}"
            }
        }
        stage("git checkout stage"){
            steps{
                git url:'https://github.com/sanju02g/devops_auto.git' , branch:'kubernetes'
            }
        }
        stage("tearraform stage"){
            steps{
                sh ''' 
                #!/bin/bash
                terraform init
                terraform $1 -auto-approve
                '''
            }
        }
    }
}
