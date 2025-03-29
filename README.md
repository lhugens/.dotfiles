# Hostname Configuration

´´´shell
sudo scutil --set HostName macbook-air
´´´

# Install Howebrew

## Instalation command

´´´shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
´´´

## Configuration

´´´shell
echo >> /Users/lhugens/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/lhugens/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
´´´

## Install packages and casks from text files

´´´shell
xargs brew install < brew-packages.txt
xargs brew install --cask < brew-casks.txt
´´´

# Oh My Zsh 

## Installation command

´´´shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
´´´

## Plugin Installation

### zsh-autosuggestions

´´´shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
´´´

### zsh-syntax-highlighting

´´´shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
´´´

### Update .zshrc

´´´shell
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
´´´

# Neovim

## Install kickstart.nvim

´´´shell
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
´´´

