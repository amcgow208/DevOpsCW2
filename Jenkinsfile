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
        withCredentials([string(credentialsId: 'DockerHub', variable: 'DOCKER_HUB_PASSWORD')]) {
          sh 'docker login -u amcgow208 -p $DOCKER_HUB_PASSWORD'
          sh 'docker push amcgow208/myimage'
        }
      }
    stage('Test') {
      steps {
        echo 'Running tests...'
        sh 'docker run -it amcgow208/myimage node /home/ubuntu/DevOpsCW2/server.ja'
      }
    }
  }
}

