#!/bin/bash

# Install zsh
brew install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Remove generated .zshrc
rm $HOME/.zshrc

# Link custom .zshrc
ln -s $PWD/zshrc $HOME/.zshrc

# Source newly linked .zshrc
source $HOME/.zshrc
