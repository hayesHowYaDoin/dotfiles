#!/bin/sh

# History
HISTFILE=~/.zsh_history

# Znap package manager
[[ -r ~/.config/zsh/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.config/zsh/znap

source ~/.config/zsh/znap/znap.zsh

# Custom sources
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/functions.zsh"

# Install starship
install_dependencies

znap eval starship "starship init zsh --print-full-init"
znap prompt

# Plugins
znap source esc/conda-zsh-completion
znap source zsh-users/zsh-autosuggestions
znap source hlissner/zsh-autopair
znap source zap-zsh/supercharge
znap source zap-zsh/vim
znap source zap-zsh/fzf
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-history-substring-search

# Keybinds
bindkey '^ ' autosuggest-accept

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down