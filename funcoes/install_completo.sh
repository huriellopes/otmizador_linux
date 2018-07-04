# -------------------------------
# Instalação completa do Ambiente
# -------------------------------

InstallCompleta() {
 echo -n "Adicionando o repositório do sublime!"
 echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
 echo -e "[${green} Repositório adicionado com Sucesso! ${NC}]\n"

 echo -n "Baixando a chave do repositório"
 wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
 echo -e "[${green} Chave Baixado com Sucesso! ${NC}]\n"

 echo -n "Atualizando os pacotes!"
 sudo apt-get update > /dev/null 2>&1
 echo -e "[${green} Atualizado com sucesso! ${NC}]\n"

 echo -n "Instalando o Sublime text"
 sudo apt-get install sublime-text > /dev/null 2>&1
 echo -e "[${green} Sublime instalado com sucesso! ${NC}]\n"

 echo -n "Instalando o Composer"
 sudo apt-get install composer > /dev/null 2>&1
 echo -e "[${green} Composer instalado com Sucesso! ${NC}]\n"

 echo -n "Instalando o MySQL Server"
 sudo apt-get -y install mysql-server > /dev/null 2>&1
 echo -e "[${green} Mysql instaldo com Sucesso! ${NC}]\n"

 echo -n "Instalando o PHP e seus módulos!"
 sudo apt-get -yqq install php7.0 php7.0-cli php7.0-mysql php7.0-curl php7.0-mbstring php7.0-gd php7.0-json php7.0-xml php7.0-openssl php7.0-mcrypt
 echo -e "[${green} Instalado com Sucesso! ${NC}]\n"

 echo -n "Instalando o GIT"
 sudo apt-get install git
 echo -e "[${green} Git Instalado com Sucesso! ${NC}]\n"

 echo -n "Adicionando o repositório"
 sudo apt-get install \
   apt-transport-https \
   ca-certificates \
   curl \
   software-properties-common > /dev/null 2>&1

 echo -n "Adicionando a chave!"
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 echo -e "[${green} Chave Baixado com Sucesso! ${NC}]\n"

 echo -n "Verificando chave!"
 sudo apt-key fingerprint 0EBFCD88
 echo -e "[${green} Chave Verificada com Sucesso! ${NC}]\n"

 echo -n "Verificando!"
 sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable" > /dev/null 2>&1

 echo -n "Atualizando os pacotes!"
 sudo apt-get update > /dev/null 2>&1
 echo -e "[${green} Atualizado com sucesso! ${NC}]\n"

 echo -n "Instalando o Docker"
 sudo apt-get install docker-ce > /dev/null 2>&1
 echo -e "[${green} Instalado com Sucesso! ${NC}]\n"

 echo -n "Adicionando o instalador!"
 sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose > /dev/null 2>&1
 echo -e "[${green} Adicionado com sucesso! ${NC}]\n"

 echo -n "Dando permissão!"
 sudo chmod +x /usr/local/bin/docker-compose
 echo -e "[${green} Permissão dada com Sucesso! ${NC}]\n"

 echo -n "Testando o docker-compose"
 docker-compose --version
}
