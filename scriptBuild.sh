#!/bin/bash

# configurando chaves GPG docker

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

#adicionando o repositorio do docker como fontes do API

echo \ 
 "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME")stable" | \
 sudo tee /etc/apt/sources.list.d/docker.list > dev/null
sudo apt-get update

#instalando ultimas versões

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#adicionando o usuario no grupo sudo 
sudo usermod -aG docker $USER  
newgrp docker
