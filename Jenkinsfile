pipeline{
    agent any
    parameters{
        choice(name: 'terraform_command', choices: ['apply','destroy'], description: 'created for terrfaorm')
    }
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
                terraform init
                terraform "${params.terraform_command}" -auto-approve
                '''
            }
        }
    }
}
