#!groovy

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
        sh 'docker run cw_image /bin/bash -c "mycommand"'
      }
    }
  }
}

