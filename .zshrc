#history control
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=100000
HISTFILESIZE=2000000

# oh-my-zsh config
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/local/bin/st
export BROWSER=/usr/bin/brave
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="bira"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias cl="clear"
alias rg="ranger"
alias df="dfc"
alias :q="exit"
alias z="$EDITOR ~/.zshrc"
alias v="$EDITOR ~/.vimrc"
alias t="TERM=xterm-256color tmux"
alias tk="tmux kill-server"

# functions
activate(){ source $1/bin/activate }

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# add ~/.scripts and ~/.local/bin folders to path
export PATH=$PATH$( find $HOME/.scripts/ -type d -printf ":%p" )
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
export PATH="$HOME/.emacs.d/bin${PATH:+:${PATH}}"
