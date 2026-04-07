pipeline {
    agent any

    stages {
        stage('Cloning github repository') {
            steps {
               git branch: 'main', url: 'https://github.com/YASHASHWINIG/docker-01.git'
            }
        }
         stage('building image') {
            steps {
               bat 'docker build -t docker-image .'
            }
        }
         stage('creatiing container') {
            steps {
               bat 'docker run -d --name cont-01 docker-image'
            }
        }
         stage('pushing image to dockerhub') {
            steps {
               bat '''docker login -u yashashwinig -p Yashu@200319
                      docker tag docker-image yashashwinig/docker-image:v1
                      docker push yashashwinig/docker-image:v1'''
            }
        }
    }
}
