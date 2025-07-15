pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                echo 'Installing dependencies'
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