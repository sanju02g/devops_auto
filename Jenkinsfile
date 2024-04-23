pipeline{
    agent: any
    stages{
        stage("git checkout stage"){
            step{
                git url:'https://github.com/sanju02g/devops_auto.git' , branch:'kubernetes'
            }
        }
        stage("dummy stage"){
            steps{
                sh 'echo reached '
            }
        }
    }
}
