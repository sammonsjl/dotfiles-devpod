#!/bin/bash

rm -f ~/.zshrc

stow --target ~/ . -v

stow -t ~ nvim
stow -t ~ starship
stow -t ~ tmux
stow -t ~ zshrc
