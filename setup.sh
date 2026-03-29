#!/bin/bash

# Script for setting up nix system
nix --version

if [ $? -ne 0 ]; then
        echo -e "\e[31mNix is Not installed, Installing nix\e[0m"
        sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
else
        echo -e "\e[32mNix is installed\e[0m"
fi

ZSH="/bin/zsh"

if [ $SHELL != $ZSH ]; then
        sudo rm -rf ./hardware-configuration.nix
        sudo cp /etc/nixos/hardware-configuration.nix ./
fi
echo -e "\e[32mBuilding Nix config\e[0m"

sudo nixos-rebuild switch --flake
