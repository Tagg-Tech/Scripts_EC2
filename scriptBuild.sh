#!/bin/bash

#instalando python
echo "Bem vindo a TagTech, script de instalação do ambiente

 ___  _   __  ___  ___ __  _ _ 
|_ _|/ \ / _||_ _|| __/ _|| U |
 | || o ( |_n | | | _( (_ |   |
 |_||_n_|\__/ |_| |___\__||_n_|
                               

"

which python3
if [ $? = /usr/bin/python3 ] 
  then echo "Python3 instalado"
  else sudo apt install python3
fi

sudo apt install -y python3-pip python3-psutil python3-dotenv python3-requests python3-pandas python3-boto3


#configurando bibliotecas python

# configurando chaves GPG docker

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

#adicionando o repositorio do docker como fontes do API

echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
 sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

#instalando ultimas versões

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#adicionando o usuario no grupo sudo 
sudo usermod -aG docker $USER  
newgrp docker

echo "Comandos feitos, fim do processo"

echo "Iniciando DOCKER"

docker -v

docker pull mysql

docker run -d -p 3306:3306 --name db -e "MYSQL_ROOT_PASSWORD=urubu100" mysql

#sudo docker start db

#sudo docker exec -it db bash

which node -v
if [ $? != "" ]
  then echo "Node instalado"
  else curl https://deb.nodesource.com/setup_16.x | sudo -E bash - 
  sudo apt install -y nodejs
fi

sudo git clone https://github.com/Tagg-Tech/Development.git /
sudo git clone https://github.com/Tagg-Tech/DATA_ANALYTICS.git /


cd /Development/web-data-viz

npm i && npm start

echo "Aproveite!"

