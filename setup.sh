sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# === Applications ===

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
sudo apt install thunar -y
sudo apt install mpv -y # video viewer for webcam view
sudo apt install xfce4 -y
sudo apt install cowsay -y
sudo apt install ranger -y
sudo apt install pandoc -y # because we love to convert markdown to stuff
sudo apt install texlive-full -y # mainly for converting .md to presentations
sudo apt install okular -y
sudo apt install brightnessctl -y
sudo apt install python3.13-venv -y
sudo apt install python3-pip -y
sudo apt install curl -y
# Random ass dependencies so I can install mysqlclient
sudo apt install python3-dev default-libmysqlclient-dev build-essential pkg-config -y
sudo apt install kmag -y
sudo apt install newsboat -y
sudo apt install tmux -y
sudo apt install rofi -y
sudo apt install libfuse2 -y
sudo apt install i3lock -y
sudo apt install lxappearance -y
sudo apt install scrot -y

# Fuck...
sudo apt install snapd
sudo snap install snapd
sudo snap install typst
sudo snap install steam
sudo snap install localsend
sudo snap install spotify
sudo snap install pomotroid
sudo span install postman
sudo snap install mc-installer
sudo snap install pinta
sudo snap refresh

# === Configs ===

# Copy configuration files over
mkdir ~/.config/nvim
cp configs/nvim/init.vim ~/.config/nvim
cp configs/fluxbox/menu ~/.fluxbox/
cp configs/fluxbox/startup ~/.fluxbox/
cp configs/fluxbox/init ~/.fluxbox/
cp configs/xterm/.Xresources ~/
xrdb -merge ~/X.resources
mkdir ~/.config/qutebrowser
cp configs/qutebrowser/config.py ~/.config/qutebrowser/
cp configs/bash/.bashrc ~/
fbsetbg -f ./imgs/debian_ascii_art.png

# NVIM Install Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# === Installers ===
sudo rm -rf installers/
mkdir installers
cd installers
# Zoom
sudo apt install libglib2.0-0 libxcb-xtest0
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
# Debian
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
# Easyroam
wget https://www.easyroam.de/debapp/easyroam.deb
sudo dpkg -i easyroam.deb
wget https://autoupdate.termius.com/linux/Termius.deb
sudo dpkg -i Termius.deb
#Rofi themes
git clone https://github.com/lr-tech/rofi-themes-collection.git
cd rofi-themes-collection
mkdir -p ~/.local/share/rofi/themes/

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
