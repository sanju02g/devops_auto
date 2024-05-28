
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

