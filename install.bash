#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install fish
echo "Add fish shell:"
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
brew install python
pip install neovim
open ./base-16/terminal-app/base16-ocean.dark.terminal
git clone https://github.com/VundleVim/Vundle.vim.git ./config/nvim/bundle/Vundle.vim
./linkfiles.fish
nvim +PluginInstall +qall
cd ./config/nvim/bundle/YouCompleteMe
./install.py
cd -
cd ./config/nvim/bundle/vimproc.vim
make
cd -
brew cask install google-chrome
