#!/bin/bash
# Setup file for docker dev containers extension for VS Code

if [[ "$EUID" -ne 0 ]]; then
  sudo apt-get install stow
else
  apt-get install stow
fi

stow zsh
