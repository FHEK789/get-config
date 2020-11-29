#!/usr/bin/env bash

echo "--- GETTING CONFIG ---"

# alacritty configuration
mkdir -p $HOME/.config/alacritty

cp ./alacritty/alacritty.yml $HOME/.config/alacritty/
cp ./alacritty/dracula.yml $HOME/.config/alacritty/

# starship configuration
cp ./starship/starship.toml $HOME/.config/
