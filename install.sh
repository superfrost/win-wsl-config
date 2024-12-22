#!/bin/bash

echo "------Updating apt index and binaries------"
sudo apt update && sudo apt upgrade -y && sudo apt autoremove

echo "------Installing main packages------"
sudo apt install curl unzip zip tar git make build-essential -y

echo "------Installing Go------"
curl -LO https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
#sudo rm -rf ~/go ~/.go
tar -C ~/ -xzf go1.23.4.linux-amd64.tar.gz
cat >> ~/.bashrc << EOF
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.go/bin"
export GOPATH="$HOME/.go"
EOF

export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.go/bin"
export GOPATH="$HOME/.go"

. ~/.bashrc
rm go1.23.4.linux-amd64.tar.gz

go version

echo "------Installing Nodejs------"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash -

export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"
nvm install 22

node --version

echo "------Installing Rust------"
wget https://sh.rustup.rs -O rust-install.sh
chmod +x rust-install.sh
./rust-install.sh -y
. "$HOME/.cargo/env"
rm rust-install.sh

rustc --version

echo "------Check versions------"
go version
echo "Nodejs $(node --version)"
rustc --version
python3 --version

echo "------Installing aliases------"
cat >> ~/.bashrc << EOF
alias python='python3'
EOF

. "$HOME/.bashrc"
python --version
