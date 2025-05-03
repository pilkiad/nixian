sudo apt update

# Install applications
sudo apt install xterm -y
sudo apt install fluxbox -y
sudo apt install qutebrowser -y
sudo apt install git -y
sudo apt install git-cola -y
sudo apt install python3 -y
sudo apt install neovim -y
sudo apt install obs-studio -y
sudo apt install arandr -y # manage desktops
sudo apt install network-manager-gnome -y # network icon
sudo apt install pasystray -y # sound icon
sudo apt install unclutter -y # hide mouse cursor
sudo apt install cbatticon -y # battery icon
sudo apt install tldr -y # short command examples for the terminal
sudo apt install thunar -y
sudo apt install mpv -y # video viewer for webcam view
sudo apt install xfce4 -y

# Fuck...
sudo apt install snapd
sudo snap install snapd
sudo snap install typst
sudo snap install steam
sudo snap install localsend
sudo snap refresh

# Copy configuration files over
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim
cp menu ~/.fluxbox/
cp startup ~/.fluxbox/
cp .Xresources ~/
xrdb -merge ~/X.resources
mkdir ~/.config/qutebrowser
cp config.py ~/.config/qutebrowser/

# Minecraft
sudo apt install openjdk-17-jre -y
sudo apt install default-jre libgdk-pixbuf2.0-0 -y
wget https://launcher.mojang.com/download/Minecraft.deb
sudo dpkg -i Minecraft.deb

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
