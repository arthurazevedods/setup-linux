sudo dnf update -y

# enable flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Instalando o Snap
sudo dnf install -y snapd

#RPM Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y \
    git \
    curl \
    wget \
    gnome-tweaks \
    dnf-plugins-core



#Multimedia codecs
sudo dnf install -y libavcodec-freeworld

# Limpar cache
echo "Limpando cache..."
sudo dnf autoremove -y
sudo dnf clean all

echo "Todas as instalações foram concluídas"
