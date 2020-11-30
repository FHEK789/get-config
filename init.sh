#!/usr/bin/env bash

echo "--- GETTING CONFIG ---"

# alacritty configuration
mkdir -p $HOME/.config/alacritty

cp ./alacritty/alacritty.yml $HOME/.config/alacritty/
cp ./alacritty/dracula.yml $HOME/.config/alacritty/

# starship configuration
cp ./starship/starship.toml $HOME/.config/

# vscode configuration
mkdir -p $HOME/.config/Code/User
cp ./vscode/settings.json $HOME/.config/Code/User/settings.json

# shell configurations
cp ./shell/fhek789.zsh $HOME/.oh-my-zsh/custom/fhek789.zsh

sleep 1

echo "restart alacritty to apply configurations"
