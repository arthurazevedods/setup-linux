#!/bin/bash
#chmod +x setup.sh
# ./setup.sh

sudo dnf update -y

sudo dnf install -y \
    git \
    curl \
    wget \
    gnome-tweaks \
    dnf-plugins-core

# Instalando Brave
curl -fsS https://dl.brave.com/install.sh | sh

#Instalando VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code -y




# Instalando o Snap
sudo dnf install -y snapd

# Instalando Linguagens de Programação e Outras Ferramentas de Desenvolvimento
sudo dnf install -y \
    nodejs \
    golang \
    lua \

#Instalando o Insomnia
sudo dnf install insomnia

# Instalando o docker
sudo dnf config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
sudo dnf install -y docker-ce docker-ce-cli container.io

# Limpar cache
echo "Limpando cache..."
sudo dnf autoremove -y
sudo dnf clean all

echo "Todas as instalações foram concluídas"
