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

sudo mkdir /home/ubuntu/dev
sudo mkdir /home/ubuntu/captura

sudo git clone https://github.com/Tagg-Tech/Development.git /home/ubuntu/dev

sudo git clone https://github.com/Tagg-Tech/DATA_ANALYTICS.git /home/ubuntu/captura



which node > /dev/null 2>&1
if [ $? -eq 0 ]
then
  echo "Node instalado"
else
  echo "instalando Node"
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
  sudo apt install -y nodejs
fi


