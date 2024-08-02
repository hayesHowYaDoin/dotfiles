#!/bin/bash
# Setup file for docker dev containers extension for VS Code

if [[ "$EUID" -ne 0 ]]; then
  apt-get install stow
else
  sudo apt-get install stow
fi

stow zsh
