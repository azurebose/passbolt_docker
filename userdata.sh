#!/bin/bash
sudo apt-update -y
sudo apt-get install git -y
# install Docker  
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu  
sudo newgrp docker
sudo chmod 777 /var/run/docker.sock

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo docker-compose --version

sudo docker-compose -f docker-compose/docker-compose-ce.yaml up


sudo docker run -e MYSQL_ROOT_PASSWORD= benny@!7678 \
             -e MYSQL_DATABASE= mariadb_database1 \
             -e MYSQL_USER= passbolt_user1 \
             -e MYSQL_PASSWORD= benny@!7678 \ mariadb
             
             
$ docker run --name passbolt \
             -p 80:80 \
             -p 443:443 \
             -e DATASOURCES_DEFAULT_HOST=10.0.0.0/24 \
             -e DATASOURCES_DEFAULT_PASSWORD= benny@!7678 \
             -e DATASOURCES_DEFAULT_USERNAME= passbolt_user1 \
             -e DATASOURCES_DEFAULT_DATABASE= mariadb_database1 \
             -e APP_FULL_BASE_URL=https://example.com \
             passbolt/passbolt:develop-debian

$ docker exec passbolt su -m -c "bin/cake passbolt register_user -u bose.kodelli09@email.com -f bose -l surname -r kodelli" -s /bin/sh www-data
