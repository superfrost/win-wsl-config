Set-ExecutionPolicy Bypass -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install firefox -y

# choco install googlechrome -y

# choco install androidstudio -y

choco install git.install vscode docker-desktop -y

wsl --install Ubuntu-24.04

Restart-Computer
