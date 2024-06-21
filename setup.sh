#!/bin/bash
# Setup file for docker dev containers extension for VS Code

sudo apt-get install stow

# Take current files, then overwrite them
stow --adopt zsh
git restore zsh

# Start to prompt to download dependencies
zsh
