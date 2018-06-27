# ----------------------
# Instalação do Composer
# ----------------------

InstallComposer() {
  echo -n "Instalando o Composer"
  apt-get install composer > /dev/null 2>&1
  echo -e "[${green} Composer instalado com Sucesso! ${NC}]\n"
}
