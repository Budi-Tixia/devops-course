pipeline {
  agent any

  environment {
    BACKEND_DIR = 'backend'
    FRONTEND_DIR = 'frontend'
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/Budi-Tixia/devops-course.git'
      }
    }

    stage('Build Backend') {
      steps {
        dir("${env.BACKEND_DIR}") {
          sh 'npm install'
          sh 'npm run build || echo "Skip if not present"'
        }
      }
    }

    stage('Build Frontend') {
      steps {
        dir("${env.FRONTEND_DIR}") {
          sh 'npm install'
          sh 'npm run build'
        }
      }
    }
  }
}
