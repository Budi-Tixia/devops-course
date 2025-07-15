node {
  ws('/var/jenkins_home/workspace/devops-course-pipeline') {
    stage('Clone') {
      checkout scm
    }

    stage('Install Backend') {
      docker.image('node:18-alpine').inside {
        dir('backend') {
          sh 'npm install'
        }
      }
    }

    stage('Build Backend') {
      docker.image('node:18-alpine').inside {
        dir('backend') {
          sh 'npm run build'
        }
      }
    }

    stage('Install Frontend') {
      docker.image('node:18-alpine').inside {
        dir('web-client') {
          sh 'npm install'
        }
      }
    }

    stage('Build Frontend') {
      docker.image('node:18-alpine').inside {
        dir('web-client') {
          sh 'npm run build'
        }
      }
    }
  }
}