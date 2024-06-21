#!/bin/sh

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

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

# Theme
theme="pure"    # pure, pararussel, onehalf.minimal, zash
znap source wintermi/zsh-oh-my-posh
znap eval oh-my-posh "oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/${theme}.omp.json"

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
