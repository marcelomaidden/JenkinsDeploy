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

        stage('Installs docker') {
          sh "apt-get update && \
            apt-get install ca-certificates curl gnupg \
            install -m 0755 -d /etc/apt/keyrings"
          sh "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
              && chmod a+r /etc/apt/keyrings/docker.gpg"
          sh "echo \
              "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
              "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
              sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
              && apt-get update"
          sh "apt-get install docker-ce docker-ce-cli \
              containerd.io docker-buildx-plugin docker-compose-plugin"
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
