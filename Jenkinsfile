pipeline {
    agent any

    options {
        parallelsAlwaysFailFast()
    }

    stages {
        stage('Checkout SCM') {
          steps {
            checkout scm
          }
        }

        stage('Build') {
            steps {
              script {
                  sh "echo 'Building..'"
                  // Uses Docker Pipeline Plugin with Username with password credentials
                  // https://plugins.jenkins.io/docker-workflow/
                  docker.withRegistry('https://docker.io', 'docker-credentials'){
                    docker.build("marcelomaidden/jenkins_with_docker:$BUILD_NUMBER", "-f ./devops/Dockerfile ./devops")
                  }
              }
            }
        }

        stage('Deploy') {
            steps {
              script {
                sh "echo 'Deploying....'"
                // Uses Docker Pipeline Plugin with Username with password credentials

                docker.withRegistry('', 'docker-credentials') {
                  def image = docker.image("marcelomaidden/jenkins_with_docker:$BUILD_NUMBER")
                  image.push()
                  image.push('latest')
                }
              }
            }
        }
    }
}
