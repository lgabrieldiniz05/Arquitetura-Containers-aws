pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRETS_ACCESS_KEY = credentials('AWS_SECRETS_ACCESS_KEY')
        AWS_DEFAULT_REGION = credentials('AWS_DEFAULT_REGION')
        AWS_BUCKET = credentials('AWS_BUCKET')
        AWS_BUCKET_KEY = credentials('AWS_BUCKET_KEY')
    }
    stages {
        stage('init'){
            steps {
                dir('.') { // Representa o diretório raiz
                    sh 'terraform init -no-color -backend-config="bucket=$AWS_BUCKET" \
                                                 -backend-config="key=$AWS_BUCKET_KEY" \ 
                                                 -backend-config="region=$AWS_DEFAULT_REGION"
                    '
                }
            }
        }

    }
}