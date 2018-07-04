# -------------------
# Instalação do Mysql
# -------------------

InstallMysql() {
 echo -n "Instalando o MySQL Server"
 sudo apt-get -y install mysql-server > /dev/null 2>&1
 echo -e "[${green} Mysql instaldo com Sucesso! ${NC}]\n"
}
