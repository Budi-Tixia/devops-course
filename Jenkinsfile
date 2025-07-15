pipeline {
    agent {
        docker {
            image 'node:18-alpine'
        }
    }

    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Install') {
            steps {
                sh 'echo Installing dependencies'
            }
        }

        stage('Build Backend') {
            steps {
                dir('backend') {
                    sh 'npm install'
                    sh 'npm run build'
                }
            }
        }
    }
}