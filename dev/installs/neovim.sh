#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs NeoVIM and extensions

echo "dnf install -y neovim python3-neovim"
dnf install -y neovim python3-neovim ripgrep fd-find
