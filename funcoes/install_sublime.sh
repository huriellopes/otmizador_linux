# ---------------------
# Instalação do Sublime
# ---------------------

InstallSublime() {
 echo -n "Adicionando o repositório do sublime!"
 echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
 echo -e "[${green} Repositório adicionado com Sucesso! ${NC}]\n"

 echo -n "Baixando a chave do repositório"
 wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
 echo -e "[${green} Chave Baixado com Sucesso! ${NC}]\n"

 echo -n "Atualizando os pacotes!"
 apt-get update > /dev/null 2>&1
 echo -e "[${green} Atualizado com sucesso! ${NC}]\n"

 echo -n "Instalando o Sublime text"
 apt-get install sublime-text > /dev/null 2>&1
 echo -e "[${green} Sublime instalado com sucesso! ${NC}]\n"
}

