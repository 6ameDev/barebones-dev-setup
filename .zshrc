# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Use ZSH plugins
plugins=(git sudo fzf)

# Setting FZF install directory.
# FZF CheatSheet: Ctrl + R | Ctrl + T | <command> + ** + Tab
export FZF_BASE=/opt/homebrew/bin/fzf

source $ZSH/oh-my-zsh.sh

# For non-brew zsh installation, add Pure's site-functions to FPATH
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# Load prompt and use pure (after loading ZSH)
autoload -U promptinit; promptinit
prompt pure
