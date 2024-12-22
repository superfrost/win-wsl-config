# Windows configuration

One-liner to config windows

```ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/superfrost/win-wsl-dev-config/refs/heads/main/install.ps1 -OutFile .\install.ps1; .\install.ps1 
```

One-liner to config WSL Ubuntu

```sh
wget -O install.sh https://raw.githubusercontent.com/superfrost/win-wsl-dev-config/refs/heads/main/install.sh && chmod +x ./install.sh && ./install.sh

wget -O install.sh https://raw.githubusercontent.com/superfrost/win-wsl-dev-config/refs/heads/main/install.sh | bash - && . ~/.bashrc
```

```ps1
Set-ExecutionPolicy Bypass -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install firefox -y

# choco install googlechrome -y
# choco install androidstudio -y

choco install git.install vscode docker-desktop -y

wsl --install Ubuntu-24.04

Restart-Computer
```

## WSL Ubuntu prepare

```sh
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
```
