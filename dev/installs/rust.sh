#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs Rust development libraries

echo "Installing Rust and libraries"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

mdir -p ~/.zfunc
rustup completions zsh > ~/.zfunc/_rustup
rustup completions zsh cargo > ~/.zfunc/_cargo
