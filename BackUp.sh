Image_Name=("aryandvn24/aryan-nexus" "aryandvn24/jenkinsmod" "sonarqube" "aryandvn24/aryan-pdb" "mysql:5.7" "phpmyadmin/phpmyadmin" "tomcat")

#!/bin/bash

if docker images | grep -q "$name"; then
    echo "Docker Image $name already exists."
    pwd
    cd Jenkins
    docker exec -it jenkins bash
    cd /var/jenkins_home/
    tar -czvf Jenkinsbackup.tar.gz .
    exit
    docker cp jenkins:/var/jenkins_home/Jenkinsbackup.tar.gz .
    docker exec -it jenkins bash
    cd /var/jenkins_home/
    rm -rf Jenkinsbackup.tar.gz
else
    echo "Docker Image $name does not exist. Creating..."
    docker compose up -d
fi
