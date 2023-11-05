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
                sh "echo 'Building..'"

                sh "docker build -f devops/Dockerfile -t marcelomaidden/rails_blog:$BUILD_NUMBER ."
                sh "docker tag marcelomaidden/blog:$BUILD_NUMBER marcelomaidden/rails_blog:latest"
            }
        }

        stage('Deploy') {
            steps {
              withCredentials([usernamePassword(credentialsId: 'docker-credentials',
                                                passwordVariable: 'PASSWORD',
                                                usernameVariable: 'USERNAME')]){
                sh "echo 'Deploying....'"
                sh "docker login -u '$USERNAME' -p '$PASSWORD'"
                sh "docker push marcelomaidden/rails_blog:$BUILD_NUMBER"
                sh "docker push marcelomaidden/rails_blog:latest"
              }
            }
        }
    }
}
