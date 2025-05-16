#!/bin/bash

rm -f ~/.zshrc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git
rm -f ~/.config/nvim/init.lua

stow -t ~ lazygit
stow -t ~ nvim
stow -t ~ starship
stow -t ~ tmux
stow -t ~ zshrc

PUBLIC_KEY=$(ssh-add -L | grep "Github")

git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global user.signingkey "$PUBLIC_KEY"
git config --global --unset gpg.ssh.program

sudo chsh -s $(which zsh)
