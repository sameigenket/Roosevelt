#!/bin/bash

# Script for setting up nix system
nix --version

if [ $? -ne 0 ]; then
        echo "Nix is Not installed, Installing nix"
        sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
fi

sudo nixos-rebuild switch --flake
