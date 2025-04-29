#!/bin/bash

rm -f ~/.zshrc

stow -t ~ starship
stow -t ~ tmux
stow -t ~ zshrc

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git

chsh -s $(which zsh)
