#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs alacritty themes

mkdir -p "$XDG_CONFIG_HOME/alacritty/themes"
git clone git@github.com:alacritty/alacritty-theme.git "$XDG_CONFIG_HOME/alacritty/themes"

