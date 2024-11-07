echo "Bem vindo a TagTech, script de instalação do ambiente

 ___  _   __  ___  ___ __  _ _ 
|_ _|/ \ / _||_ _|| __/ _|| U |
 | || o ( |_n | | | _( (_ |   |
 |_||_n_|\__/ |_| |___\__||_n_|
                               

"
sudo apt-get update

which python3
if [ $? -eq 0 ]; then
  echo "Python3 instalado"
else
  echo "Instalando Python..."
  sudo apt install python3
fi

sudo apt install -y python3-pip python3-psutil python3-dotenv python3-requests python3-pandas python3-boto3
