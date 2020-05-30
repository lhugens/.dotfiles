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

# local settings
[ -f ~/.localrc ] && source ~/.localrc

# functions  
paclog()    { grep -iE 'installed|upgraded' /var/log/pacman.log }
fword()     { find . 2>/dev/null | grep -i "$1"  }
scanhosts() { nmap -sLP 192.168.1.0/24 | grep -a "lan" }
yt()        { youtube-dl -f best -ciw -o "%(playlist)s_%(playlist_index)%_%(title)s.%(ext)s" -v $1}
p()         { ps aux | grep -ia "$1" }
hide()      { mv "$1" ".${1}" }

# fuzzy finder config
export FZF_DEFAULT_OPTS="--layout=reverse --height=10 --bind 'tab:down' --bind 'btab:up'"
se(){ $EDITOR "$(find ~/.dotfiles/scripts/* ~/.config/* -type f | fzf )" }
