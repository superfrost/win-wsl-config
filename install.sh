#!/bin/bash

echo "------Updating apt index and binaries------"
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

echo "------Installing main packages------"
sudo apt install curl unzip zip tar git make build-essential -y

echo "------Installing Go------"
curl -LO https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
#sudo rm -rf ~/go ~/.go
tar -C ~/ -xzf go1.23.4.linux-amd64.tar.gz
echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:~/.go/bin' >> ~/.bashrc
echo 'export GOPATH=~/.go' >> ~/.bashrc
source ~/.bashrc
rm go1.23.4.linux-amd64.tar.gz

go version

echo "------Installing Nodejs------"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install 22

node --version

echo "------Installing Rust------"
wget https://sh.rustup.rs -O rust-install.sh
chmod +x rust-install.sh
./rust-install.sh -y
source ~/.bashrc
rm rust-install.sh

rustc --version

echo "------Check versions------"
go version
echo "Nodejs $(node --version)"
rustc --version
python3 --version

echo "------Installing aliases------"
echo "alias python='python3'" >> ~/.bashrc
source ~/.bashrc
python --version
