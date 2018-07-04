# -----------------------------------
# Instalação do PHP e de seus módulos
# -----------------------------------

InstallPHP() {
 echo -n "Instalando o PHP e seus módulos!"
 sudo apt-get -yqq install php7.0 php7.0-cli php7.0-mysql php7.0-curl php7.0-mbstring php7.0-gd php7.0-json php7.0-xml php7.0-openssl php7.0-mcrypt
 echo -e "[${green} Instalado com Sucesso! ${NC}]\n"
}
