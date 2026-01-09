#!/usr/bin/env bash

# Links files downloaded from github to user environment by force

DOTFILES="$HOME/.dotfiles"

echo "bootstrapping dotfiles..."

ln -sf "$DOTFILES/bash/.bashrc.d/prompt.sh" "$HOME/.bashrc.d/prompt.sh"
ln -sf "$DOTFILES/bash/.bashrc.d/tmux_colors.sh" "$HOME/.bashrc.d/tmux_colors.sh"
ln -sf "$DOTFILES/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

echo "bootstrapping dotfiles..."

# update Neovim before user runs it
nvim --headless \
    "+PackerSync" \
    "+MasonUpdate" \
    "+TSUpdate" \
    "+qa"

echo "bootstrapping finished!"
