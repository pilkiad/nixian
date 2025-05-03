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
sudo apt install cbatticon # battery icon
sudo apt install tldr -y # short command examples for the terminal
sudo apt install thunar -y
sudo apt install mpv -y # video viewer for webcam view

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

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
