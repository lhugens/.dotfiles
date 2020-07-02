## If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux 

#history control
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=100000
HISTFILESIZE=2000000

# oh-my-zsh config
export EDITOR=/usr/bin/vim
export TERMINAL=/usr/local/bin/st
export BROWSER=/usr/bin/brave
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="bira"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $ZSH/themes/bira.zsh-theme

# aliases
alias cl="clear"
alias rg="ranger"
alias df="dfc"
alias :q="exit"
alias z="$EDITOR ~/.zshrc"
alias v="$EDITOR ~/.vimrc"

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# add ~/.scripts and ~/.local/bin folders to path
export PATH=$PATH$( find $HOME/.scripts/ -type d -printf ":%p" )
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
