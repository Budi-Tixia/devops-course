node {
  ws('/var/jenkins_home/workspace/devops-course-pipeline') {
    stage('Clone') {
      checkout scm
    }

    stage('Install') {
      docker.image('node:18-alpine').inside {
        echo 'Installing dependencies'
      }
    }

    stage('Build Backend') {
      docker.image('node:18-alpine').inside {
        dir('backend') {
          sh 'npm install'
          sh 'npm run build'
        }
      }
    }
  }
}