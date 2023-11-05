# /bin/bash

bash dind.sh

docker build -t marcelomaidden/jenkins_with_docker .

docker run -d --name jenkins -p 9090:8080 -it marcelomaidden/jenkins_with_docker