pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Docker image...'
        sh 'docker build -t myimage .'
      }
    }
    stage('Push to Docker Hub') {
      steps {
        echo 'Pushing Docker image to Docker Hub...'
        sh 'docker push amcgow208/myimage'
      }
    }
  }
}

