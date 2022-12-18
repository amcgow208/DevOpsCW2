pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building Docker image...'
        sh 'docker build -t amcgow208/myimage .'
      }
    }
    stage('Push to Docker Hub') {
      steps {
        echo 'Pushing Docker image to Docker Hub...'
        try {
          sh 'docker push amcgow208/myimage'
        } catch (e) {
          echo "Failed to push image to Docker Hub: ${e}"
        }
      }
    }
  }
}

