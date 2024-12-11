pipeline {
    agent any

    stages {

        stage("Checkout source"){
            steps {
                git url: "https://github.com/lgabrieldiniz05/Arquitetura-Containers-aws.git", branch: 'main'
                sh 'ls' 
            }
        }
    }
}