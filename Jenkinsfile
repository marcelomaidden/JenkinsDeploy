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
                  docker.withRegistry('https://docker.io', 'docker-credentials'){
                    docker.build("marcelomaidden/jenkins_with_docker:$BUILD_NUMBER", "-f Dockerfile ./devops")
                    docker.tag(["marcelomaidden/jenkins_with_docker:$BUILD_NUMBER", "marcelomaidden/jenkins_with_docker:latest"])
                  }

                  // sh "docker build -f devops/Dockerfile -t marcelomaidden/jenkins_with_docker:$BUILD_NUMBER ."
                  // sh "docker tag marcelomaidden/jenkins_with_docker:$BUILD_NUMBER marcelomaidden/jenkins_with_docker:latest"
              }
            }
        }

        // stage('Deploy') {
        //     steps {
        //       withCredentials([usernamePassword(credentialsId: 'docker-credentials',
        //                                         passwordVariable: 'PASSWORD',
        //                                         usernameVariable: 'USERNAME')]){
        //         sh "echo 'Deploying....'"
        //         sh "docker login -u '$USERNAME' -p '$PASSWORD'"
        //         sh "docker push marcelomaidden/jenkins_with_docker:$BUILD_NUMBER"
        //         sh "docker push marcelomaidden/jenkins_with_docker:latest"
        //       }
        //     }
        // }
    }
}
