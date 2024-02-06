pipeline {
    agent {
  label 'terraform'
}
    stages {
        stage('Hello') {
            steps {
                git branch: 'main', url: 'https://github.com/sanju02g/devops_auto.git'
               sh '''
               #!/bin/bash
               echo "hello world"
               terraform plan
                '''
            }
        }
    }
}
