#!/usr/bin/env bash

# exists if anything fails
set -e

# Links files downloaded from github to user environment by force

DOTFILES="$HOME/.dotfiles"

ln -sf "$Dotfiles/bash/.bashrc.d/prompt.sh" "$HOME/.bashrc.d/prompt.sh"
ln -sf "$Dotfiles/nvim" "$HOME/.config/nvim"
ln -sf "$Dotfiles/tmux/.tmux" "$HOME/.tmux"
ln -sf "$Dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"

echo "Dotfiles linked!"
