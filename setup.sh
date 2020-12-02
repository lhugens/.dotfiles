#!/bin/sh

curl -O https://raw.githubusercontent.com/lhugens/.dotfiles/master/antigen.zsh
curl -O https://raw.githubusercontent.com/lhugens/.dotfiles/master/.zshrc
curl -O https://raw.githubusercontent.com/lhugens/.dotfiles/master/.vimrc
curl -O https://raw.githubusercontent.com/lhugens/.dotfiles/master/.tmux.conf

chsh -s /bin/zsh

source .zshrc
