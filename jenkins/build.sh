# /bin/bash

bash dind.sh

docker_repo=$1
build_number=$2

docker build -t "$docker_repo/jenkins_with_docker:$build_number" .

docker run --name jenkins --restart=on-failure --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 9090:8080 --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  "$docker_repo/jenkins_with_docker:$build_number"