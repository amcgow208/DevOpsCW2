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
                withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'DOCKER_HUB_PASSWORD', usernameVariable: 'DOCKER_HUB_USERNAME')]) {
          sh 'docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD'
          sh 'docker push amcgow208/myimage
	}

      }
    }
  }
}

