#!/usr/bin/env bash

function copy_to() {
	if [[ -d $1 ]]; then
		cp $2 $1
	else
		echo "directory not found - ($1)."
	fi
}

echo "--- GETTING CONFIG ---"

# konsole configuration
./konsole/init_konsole.sh

# starship configuration
cp ./starship/starship.toml $HOME/.config/

# vscode configuration
copy_to "$HOME/.config/Code/User" "./vscode/settings.json"

# shell configurations
cp ./shell/zshrc $HOME/.zshrc

copy_to "$HOME/.oh-my-zsh/custom" "./shell/fhek789.zsh"

# csgo binds
copy_to "$HOME/.steam/steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg" "./csgo/binds.cfg"

sleep 1

echo "Done!"
