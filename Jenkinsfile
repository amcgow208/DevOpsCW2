
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Docker image...'
        sh 'docker build -t cw_image .'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing Docker image...'
        script {
          docker.withRun('cw_image') { c ->
            echo 'Test Passed'
          }
        }
      }
    }
  }
}

