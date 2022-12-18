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
        withCredentials([usernamePassword(credentialsId: 'DockerHub', usernameVariable: 'DOCKER_HUB_USERNAME', passwordVariable: 'DOCKER_HUB_PASSWORD')]) {
          sh 'docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD'
          sh 'docker push amcgow208/myimage'
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Running test...'
        sh 'docker run -it amcgow208/myimage node /home/ubuntu/DevOpsCW2/server.js'
        echo 'Testing that a container can be launched from the image...'
        sh 'docker run amcgow208/myimage echo "Container launched successfully!"'
      }
    }
  }
}
