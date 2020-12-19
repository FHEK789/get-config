#!/usr/bin/env bash

echo "--- GETTING CONFIG ---"

# konsole configuration
./konsole/init_konsole.sh

# starship configuration
cp ./starship/starship.toml $HOME/.config/

# vscode configuration
if [[ -d "$HOME/.config/Code/User" ]]; then
	cp ./vscode/settings.json $HOME/.config/Code/User/settings.json
else
	mkdir -p $HOME/.config/Code/User
	cp ./vscode/settings.json $HOME/.config/Code/User/settings.json
fi

# shell configurations
cp ./shell/zshrc $HOME/.zshrc

if [[ -d "$HOME/.oh-my-zsh/custom"]]; then
	cp ./shell/fhek789.zsh $HOME/.oh-my-zsh/custom/fhek789.zsh
else
	echo "Install oh-my-zsh beforehand."
fi

# csgo binds
if [[ -d "$HOME/.steam/steam/steampps/common/Counter-Strick\ Global\ Offensive/csgo/cfg"]]; then
	cp ./csgo/binds.cfg $HOME/.steam/steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/cfg/
else
	echo "Unable to copy cfg to CSGO folder."
fi

sleep 1

echo "Done!"
