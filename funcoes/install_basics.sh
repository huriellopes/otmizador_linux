# -------------------------------------
# Atualização de repósitorios e pacotes
# -------------------------------------

InstallBasics() {
  echo -n "Atualizando repositórios e pacotes!"
  apt-get -qq update > /dev/null 2>&1
  apt-get -qq upgrade > /dev/null 2>&1
  echo -e "[${green} Atualizado com Sucesso!${NC}]\n"
}
