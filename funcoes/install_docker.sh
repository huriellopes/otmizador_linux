# ---------------------
# Instalação do Docker
# ---------------------

InstallDocker() {
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
}
