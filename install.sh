#!/bin/bash

# Bash Colors
red='\033[0;31m'
green='\033[0;32m'
NC='\033[0m' # Sem cor

# Salvado o diretório atual

PWD=$(pwd);

# Carregando as funções
source $PWD/funcoes/install_basics.sh
source $PWD/funcoes/install_sublime.sh
source $PWD/funcoes/install_composer.sh
source $PWD/funcoes/install_mysql.sh
source $PWD/funcoes/install_php.sh
source $PWD/funcoes/install_git.sh
source $PWD/funcoes/install_docker.sh
source $PWD/funcoes/install_dockercompose.sh
source $PWD/funcoes/install_completo.sh

echo "========================="
echo "Otimizador de instalação"
echo "========================="
echo
echo "1. Instalar o Sublime"
echo "2. Composer"
echo "3. MySQL"
echo "4. PHP"
echo "5. GIT"
echo "6. Docker"
echo "7. Docker-Compose"
echo "8. Completo"
echo
echo -n "Qual a opção desejada? "
read opcao

case $opcao in
  1)
     echo "Instalando o Sublime!"
     InstallSublime ;;
  2) 
     echo "Atualizando!"
     InstallBasics
     InstallComposer ;;
  3) 
     echo "Atualizando!"
     InstallBasics
     InstallMysql ;;
  4) 
     echo "Atualizando!"
     InstallBasics
     InstallPHP ;;
  5) 
     echo "Atualizando!"
     InstallBasics
     InstallGit ;;
  6) 
     echo "Atualizando!"
     InstallBasics
     InstallDocker ;;
  7)
     echo "Atualizando!"
     InstallBasics
     InstallDockerCompose ;;
  8) 
     echo "Atualizando!"
     InstallBasics
     InstallCompleta ;;
  *) "Opção desconhecida!" ; echo ; Menu ;;
 esac
