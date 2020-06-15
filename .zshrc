# history control
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTSIZE=100000
HISTFILESIZE=2000000

# oh-my-zsh config
export EDITOR=/usr/bin/vim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias cl="clear"
alias rg="ranger"
alias :q="exit"
alias z="$EDITOR ~/.zshrc"
alias v="$EDITOR ~/.vimrc"
k(){ cd /home/hugens/kyria/qmk_firmware/keyboards/kyria/keymaps/lhugens && vim keymap.c }
swap(){ setxkbmap -option caps:swapescape }

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# add ~/.scripts folder to path
export PATH="$HOME/.scripts:$HOME/.local/bin:$PATH"
