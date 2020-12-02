source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bira

# Tell Antigen that you're done.
antigen apply

export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/local/bin/st
export BROWSER=/usr/bin/chromium

# aliases
alias cl="clear"
alias rg="ranger"
alias df="dfc"
alias :q="exit"
alias z="$EDITOR ~/.zshrc"
alias v="$EDITOR ~/.vimrc"
alias t="TERM=xterm-256color tmux"
alias tk="tmux kill-server"
alias u="cd ~/shared/uni && ranger"

# functions
activate(){ source ~/devel/env/bin/activate }
run(){ g++ $1.cpp -o $1 && ./$1 }

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# add ~/.scripts and ~/.local/bin folders to path
export PATH=$PATH$( find $HOME/.scripts/ -type d -printf ":%p" )
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
