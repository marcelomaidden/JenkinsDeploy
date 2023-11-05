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
            }
        }
        stage('Test') {
            steps {
                sh "echo 'Testing..'"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 'Deploying....'"
            }
        }
    }
}
