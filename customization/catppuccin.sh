#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs catppuccin theme for KDE Plasma

catppuccin_home="$XDG_DATA_HOME/theme/catppuccin"
mkdir -p "$catppuccin_home"
cd "$catppuccin_home"

git clone git@github.com:catppuccin/kde.git
git clone git@github.com:catppuccin/ksyntaxhighlighting.git
