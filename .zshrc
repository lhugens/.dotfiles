source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle lein
# antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bira

# Tell Antigen that you're done.
antigen apply

export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/local/bin/st
export BROWSER=/usr/bin/firefox

# aliases
alias cl="clear"
alias rg="ranger"
alias df="dfc"
alias vim=nvim
alias :q="exit"
alias z="$EDITOR ~/.zshrc"
alias v="$EDITOR ~/.vimrc"
alias t="TERM=xterm-256color tmux"
alias tk="tmux kill-server"

# functions
activate(){ source ~/devel/env/bin/activate }
run(){ g++ $1.cpp -o $1 && ./$1 }

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# add ~/.scripts and ~/.local/bin folders to path
export PATH=$PATH$( find $HOME/.scripts/ -type d -printf ":%p" )
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
# export PATH="$HOME/.emacs.d/bin${PATH:+:${PATH}}"
