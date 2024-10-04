#!/bin/bash
# Setup file for docker dev containers extension for VS Code

SUDO=""
if [[ "$EUID" -ne 0 ]]; then
    SUDO="sudo"
fi

$SUDO apt-get update
$SUDO apt-get install -y zsh stow

stow zsh
