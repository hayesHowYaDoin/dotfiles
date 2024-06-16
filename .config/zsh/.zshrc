#!/bin/sh

# History
HISTFILE=~/.zsh_history

# Zap package manager
if ! command -v zap >/dev/null 2>&1; then
    git clone https://github.com/zap-zsh/zap.git "$HOME/.local/share/zap"
    source "$HOME/.local/share/zap/zap.zsh"
fi

# Custom sources
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/functions.zsh"

# Install Oh My Posh
if [ ! -d "$HOME/.oh-my-posh" ]; then
    git clone https://github.com/ohmyposh/oh-my-posh.git "$HOME/.oh-my-posh"
fi

# Plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# Keybinds
bindkey '^ ' autosuggest-accept

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
