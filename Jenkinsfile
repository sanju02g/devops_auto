@Library("my-shared-library") _  //importing shared library  jenkins dashboard->configure system-> global pipeline library(needs to do these chnages) and give repo and branch details
pipeline {
    agent any
   /* agent {
  label 'terraform'
}*/
environment {
  DOCKER_TAG = getVersion()
}

    stages {
        stage('shared library test') {
            steps {
                helloWorld()  //shared library file not function name written in vars folder
            }
        }
        stage('Docker image creation') {
            steps {
                git branch: 'main', url: 'https://github.com/sanju02g/devops_auto.git'
               sh '''
               #!/bin/bash
               cd ./ansible
               docker stop $(docker ps -a -q) && docker rm $(docker ps -qa)
               docker build -t sanju02g/ansible:${DOCKER_TAG} .
               
                '''
            }
        }
        stage('Docker ansible container creation') {
            steps {
               sh '''
               #!/bin/bash
               docker container run -it -d --name ansible-${DOCKER_TAG} sanju02g/ansible:${DOCKER_TAG} 
               
                '''
            }
        }
         stage('parameterized demo') {
            steps {
              script{
                  def output= sh returnStdout: true , script: 'properties([parameters([string(defaultValue: 'dev', name: 'environment')])])'
                  sh "echo $output"
                  
              }
            }
        }
        /*stage('build terraform code') {
            steps {
                git branch: 'main', url: 'https://github.com/sanju02g/devops_auto.git'
               sh '''
               #!/bin/bash
               terraform init
               echo 'yes' | terraform apply
                '''
            }
        } */
        /*stage('Docker push image') {
            steps {
                withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerpwd')]) {
                sh "docker login -u sanju02g -p ${dockerpwd}"
            }
            sh "docker push sanju02g/jenkinsimage:${DOCKER_TAG}"
            }
        }*/
    }
}
def getVersion(){
    def CommitId= sh returnStdout: true, script: 'git rev-parse --short HEAD'
    return CommitId
    
}
