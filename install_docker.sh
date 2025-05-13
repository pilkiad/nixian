# Can't install docker in setup script since they have their own weird installer
# script
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
sudo usermod -aG docker arian # add to docker group
