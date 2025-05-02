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
sudo apt install tldr -y # short command examples for the terminal
sudo apt install thunar

# Fuck...
sudo apt install snap
sudo snap install typst

# Copy configuration files over
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim
cp menu ~/.fluxbox/
cp startup ~/.fluxbox/
cp .Xresources ~/
xrdb -merge ~/X.resources

sudo apt update
sudo apt upgrade -y
