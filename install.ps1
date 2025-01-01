Set-ExecutionPolicy Bypass -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install firefox -y

# choco install librewolf -y
# choco install googlechrome -y

# OOshutUp 10
# choco install shutup10 -y

# Notepad++
# choco install notepadplusplus -y

# LibreOffice
# choco install libreoffice-fresh -y

# Mozilla ThunderBird
# choco install thunderbird -y

# Arduino 
# choco install arduino -y

# Obsidian
# choco install obsidian -y

# Video editor free
# choco install kdenlive -y

# Audio editor
# choco install audacity -y

# Decode/encoder media
# choco install xmedia-recode -y

# RustDesk
# choco install rustdesk -y

# Dbeaver
# choco install dbeaver -y

# UltraVNC
# choco install ultravnc -y

# Telegram
# choco install telegram -y

# 7zip
# choco install 7zip -y

# Simple VPN
# choco install openvpn -y
# choco install wireguard -y

# Video players
# choco install vlc -y
# choco install k-litecodecpackbasic -y
# choco install k-litecodecpackfull -y
# choco install k-litecodecpackmega -y

# PDF viewer
# choco install sumatrapdf -y

# Send http request GUI Bruno
# choco install bruno

# Android Studio
# choco install androidstudio -y

choco install git.install vscode docker-desktop -y

wsl --install Ubuntu-24.04

Restart-Computer
