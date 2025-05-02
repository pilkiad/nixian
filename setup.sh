sudo apt update

# Install applications
sudo apt install fluxbox
sudo apt install qutebrowser
sudo apt install git
sudo apt install gitkraken # make git bearable
sudo apt install python3
sudo apt install neovim
sudo apt install arandr # manage desktops
sudo apt install network-manager-gnome # network icon
sudo apt install pasystray # sound icon
sudo apt install unclutter # hide mouse cursor
sudo apt install tldr # short command examples for the terminal

# Copy configuration files over
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim
cp menu ~/.fluxbox/
cp startup ~/.fluxbox/

sudo apt update
sudo apt upgrade -y
