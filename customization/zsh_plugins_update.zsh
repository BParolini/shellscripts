#!/usr/bin/env zsh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Updates ZSH plugins

PLUGINS=(
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-completions"
)

for plugin in "${PLUGINS[@]}"
do
    echo "Updating $plugin"
    (
        cd "$plugin" || continue
        git fetch -p -P --depth=1
        git pull --depth=1
    )
done
