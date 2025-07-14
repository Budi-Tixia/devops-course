pipeline {
  agent any

  environment {
    BACKEND_DIR = 'backend'
    FRONTEND_DIR = 'frontend'
  }

  stages {
<<<<<<< HEAD
    stage('Checkout') {
      steps {
        git 'https://github.com/Budi-Tixia/devops-course.git'
      }
    }

=======
>>>>>>> b7c2def (Fix: Remove unnecessary git step from Jenkinsfile)
    stage('Build Backend') {
      steps {
        dir("${env.BACKEND_DIR}") {
          sh 'npm install'
<<<<<<< HEAD
          sh 'npm run build || echo "Skip if not present"'
=======
          sh 'npm run build || echo "No build step for backend"'
>>>>>>> b7c2def (Fix: Remove unnecessary git step from Jenkinsfile)
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
