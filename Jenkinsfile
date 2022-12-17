pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Docker image...'
        sh 'docker build -t cw_image .'
      }
    }
  }
}
