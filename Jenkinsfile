pipeline {
  agent {
    docker {
      image 'node:18-alpine'
      args '-u root' // to avoid permission issues
    }
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/Budi-Tixia/devops-course.git'
      }
    }

    stage('Build Backend') {
      steps {
        dir('backend') {
          sh 'npm install'
          sh 'npm run build || true'
        }
      }
    }

    stage('Build Frontend') {
      steps {
        dir('frontend') {
          sh 'npm install'
          sh 'npm run build'
        }
      }
    }
  }
}