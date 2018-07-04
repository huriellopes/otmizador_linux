# ---------------------------
# Instalando o Docker-Compose
# ---------------------------

InstallDockerCompose() {
 echo -n "Adicionando o instalador!"
 sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose > /dev/null 2>&1
 echo -e "[${green} Adicionado com sucesso! ${NC}]\n"

 echo -n "Dando permissão!"
 sudo chmod +x /usr/local/bin/docker-compose
 echo -e "[${green} Permissão dada com Sucesso! ${NC}]\n"

 echo -n "Testando o docker-compose"
 docker-compose --version
}
