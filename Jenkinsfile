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
        stage('Setup Environment') {
            steps {
                withCredentials([
                    string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'),
                    string(credentialsId: 'AWS_SECRETS_ACCESS_KEY', variable: 'AWS_SECRETS_ACCESS_KEY')
                ]) {
                    sh '''
                    echo "Exportando variáveis AWS..."
                    export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
                    export AWS_SECRETS_ACCESS_KEY=$AWS_SECRETS_ACCESS_KEY
                    export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
                    echo "Variáveis configuradas: "
                    echo "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID"
                    echo "AWS_SECRET_ACCESS_KEY=****"
                    echo "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION"
                    ''' 
                }
            }
        }
    
        stage('init'){
            steps {
                withCredentials([
                    string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'AWS_ACCESS_KEY_ID'),
                    string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'AWS_SECRET_ACCESS_KEY')
                ]) 
                dir('.') { // Representa o diretório raiz
                    sh '''terraform init -no-color -backend-config="bucket=$AWS_BUCKET" \
                                                 -backend-config="key=$AWS_BUCKET_KEY" \
                                                 -backend-config="region=$AWS_DEFAULT_REGION"
                    '''
                }
            }
        }

    }
}
