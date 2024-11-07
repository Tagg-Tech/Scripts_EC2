echo "Bem vindo a TagTech, script de instalação do ambiente

 ___  _   __  ___  ___ __  _ _ 
|_ _|/ \ / _||_ _|| __/ _|| U |
 | || o ( |_n | | | _( (_ |   |
 |_||_n_|\__/ |_| |___\__||_n_|
                               
"
sudo apt-get update

which node > /dev/null 2>&1
if [ $? -eq 0 ]
then
  echo "Node instalado"
else
  echo "instalando Node"
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - 
  sudo apt install -y nodejs
fi