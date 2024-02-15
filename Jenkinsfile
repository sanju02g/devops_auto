@Library("my-shared-library") _  //importing shared library
pipeline {
    agent {
  label 'terraform'
}
environment {
  DOCKER_TAG = getVersion()
}

    stages {
        stage('shared library test') {
            steps {
                helloWorld()  //shared library file not function name
            }
        }
        /*stage('Docker image creation') {
            steps {
                git branch: 'main', url: 'https://github.com/sanju02g/devops_auto.git'
               sh '''
               #!/bin/bash
               sudo chmod 666 /var/run/docker.sock
               docker build -t sanju02g/jenkinsimage:${DOCKER_TAG} .
               
                '''
            }
        }*/
        stage('build terraform code') {
            steps {
                git branch: 'main', url: 'https://github.com/sanju02g/devops_auto.git'
               sh '''
               #!/bin/bash
               terraform init
               echo 'yes' | terraform apply
                '''
            }
        } 
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
