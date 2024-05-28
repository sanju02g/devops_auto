@Library("my-shared-library") _  //importing shared library  jenkins dashboard->configure system-> global pipeline library(needs to do these chnages) and give repo and branch details
pipeline {
    agent any
  
environment {
  DOCKER_TAG = getVersion()
}


    stages {
        stage('python test') {
            steps {
                sh 'python python.py'
            }
        }
       
    }
}

