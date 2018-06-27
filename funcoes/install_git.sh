# -----------------
# Instalação do git
# -----------------

InstallGit() {
  echo -n "Instalando o GIT"
  apt-get install git
  echo -e "[${green} Git Instalado com Sucesso! ${NC}]\n"
}
