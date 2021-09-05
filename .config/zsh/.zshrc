# Default applications
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export TERM='xterm-256color'
export MYVIMRC='~/.config/nvim/init.vim'
export ZSH="/home/philippe/.config/zsh/.oh-my-zsh"

# ZSH options
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
unsetopt BEEP # Disable beep when entering wrong command

autoload -Uz compinit && compinit 
autoload -Uz promptinit && promptinit
autoload -Uz colors && colors # Colors 

# Make capital letter same as normal letters for autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zle_highlight=('paste:none') # Disable copy-pasting highlighting
_compo_options+=(globdots)


# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# Aliases and custom functions
alias v='nvim'
alias pac='sudo pacman'
alias ls="lsd -Alh --group-dirs first"

function cs () {
  cd "$@" && ls
}

# OH-MY-ZSH CONFIG

ZSH_THEME="awesomepanda"
COMPLETION_WAITING_DOTS="true"
DISABLE_LS_COLORS="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh

neofetch
