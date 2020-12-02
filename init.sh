#!/usr/bin/env bash

echo "--- GETTING CONFIG ---"

# konsole configuration
cp ./konsole/* $HOME/.local/share/konsole/

# starship configuration
cp ./starship/starship.toml $HOME/.config/

# vscode configuration
mkdir -p $HOME/.config/Code/User
cp ./vscode/settings.json $HOME/.config/Code/User/settings.json

# shell configurations
cp ./shell/fhek789.zsh $HOME/.oh-my-zsh/custom/fhek789.zsh

sleep 1

echo "Done!"
