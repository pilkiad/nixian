sudo apt update

# Install applications
sudo apt install fluxbox
sudo apt install qutebrowser
sudo apt install git
sudo apt install python3
sudo apt install neovim
sudo apt install arandr
sudo apt install network-manager-gnome
sudo apt install pasystray
sudo apt install cbatticon
sudo apt install unclutter
sudo apt install tldr

# Copy configuration files over
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim
cp menu ~/.fluxbox/
cp startup ~/.fluxbox/

sudo apt update
sudo apt upgrade -y
