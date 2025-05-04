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
sudo apt install cowsay -y
sudo apt install ranger -y
sudo apt install pandoc -y # because we love to convert markdown to stuff
sudo apt install texlive-full -y # mainly for converting .md to presentations
sudo apt install okular -y

# Fuck...
sudo apt install snapd
sudo snap install snapd
sudo snap install typst
sudo snap install steam
sudo snap install localsend
sudo snap install spotify
sudo snap refresh

# Copy configuration files over
mkdir ~/.config/nvim
cp configs/nvim/init.vim ~/.config/nvim
cp configs/fluxbox/menu ~/.fluxbox/
cp configs/fluxbox/startup ~/.fluxbox/
cp configs/xterm/.Xresources ~/
xrdb -merge ~/X.resources
mkdir ~/.config/qutebrowser
cp configs/qutebrowser/config.py ~/.config/qutebrowser/

# === Installers ===
sudo rm -rf installers/
mkdir installers
cd installers
# Minecraft
sudo apt install openjdk-17-jre -y
sudo apt install default-jre libgdk-pixbuf2.0-0 -y
wget https://launcher.mojang.com/download/Minecraft.deb
sudo dpkg -i Minecraft.deb
# Zoom
sudo apt install libglib2.0-0 libxcb-xtest0
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
# Debian
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
