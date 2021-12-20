#!/usr/bin/bash


PKGS=(
  'git'
  'curl'
  'htop'
  'zsh'
  'cmake'
  'gcc'
  'glibc'
  'meld'  
  'docker'
  'docker-compose',
  'visual-studio-code-bin',
  'slack-desktop'
  'virtualbox'
  'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh