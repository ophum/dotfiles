#!/bin/bash

PWD=`pwd`
echo "setup dotfiles"


echo " vim..."
ln -s $PWD/vim/.vimrc $HOME/.vimrc
mkdir -p $HOME/.config/vim
ln -s $PWD/vim/.config/vim/dein.toml $HOME/.config/vim/dein.toml
ln -s $PWD/vim/.config/vim/dein_lazy.toml $HOME/.config/vim/dein_lazy.toml

echo " tmux"
ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

echo " i3"
mkdir -p $HOME/.config/i3
ln -s $PWD/i3/config $HOME/.config/i3/config
ln -s $PWD/i3/i3status.conf $HOME/.config/i3/i3status.conf

echo " compton"
mkdir -p $HOME/.config/compton
ln -s $PWD/compton/compton.conf $HOME/.config/compton/compton.conf


