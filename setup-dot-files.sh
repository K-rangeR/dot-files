#!/usr/bin/env bash

echo "cd'ing into home directory"
cd ~

if [[ -f ".bashrc" ]]; then
	echo "Saving old ~/.bashrc file in ~/.bashrc.back"
	mv .bashrc .bashrc.back
fi
ln -sf ~/workspace/dot-files/bashrc .bashrc
source .bashrc

if [[ -f ".gitconfig" ]]; then
	echo "Saving old ~/.gitconfig file in ~/.gitconfig.back"
	mv .gitconfig .gitconfig.back
fi
ln -sf ~/workspace/dot-files/gitconfig .gitconfig

if [[ -f ".tmux.conf" ]]; then
	echo "Saving old ~/.tmux.fong file in ~/.tmux.conf.back"
  mv .tmux.conf .tmux.conf.back
fi
ln -sf ~/workspace/dot-files/tmux.conf .tmux.conf

which nvim &> /dev/null
if [[ $? -ne 0 ]]; then
	echo "Getting neovim"
	sudo dnf install neovim python3-neovim
	echo "Installed neovim version $(nvim --version | head -n 1)"
fi

echo "Setting up neovim"
if [[ ! -d "~/.config/nvim" ]]; then
	mkdir -p ~/.config/nvim	
fi
ln -sf ~/workspace/dot-files/vimrc ~/.config/nvim/init.vim

echo "Installing Plug for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Run :PlugInstall the next time you open neovim"
echo "All done..."
