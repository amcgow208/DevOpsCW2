#!groovy

script {
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
          docker.withRun('cw_image') { c ->
            sh 'mycommand'
          }
        }
      }
    }
  }
}

