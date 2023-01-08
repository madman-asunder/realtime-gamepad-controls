#!/bin/bash
# this script will install your current src to the game

source variables.sh
source encoding/encode-csv-strings.sh

echo "installing mod..."
mkdir -p "$GAME_PATH/mods/$MOD_NAME/content/scripts"
rm -rf "$GAME_PATH/mods/$MOD_NAME/content/scripts/*"
source encoding/encode-ws-for-game.sh "$GAME_PATH/mods/$MOD_NAME/content/scripts"

pushd "$MOD_PATH" > /dev/null
cp strings/* "$GAME_PATH/mods/$MOD_NAME/content/"

echo "installing menu..."
cp mod-menu.xml "$GAME_PATH/bin/config/r4game/user_config_matrix/pc/${MOD_NAME}Config.xml"

echo "installing user settings..."
pushd "$W3_USER_SETTINGS_PATH" > /dev/null
cat "$MOD_PATH/input.settings.begin.txt" >> input.settings

popd > /dev/null
popd > /dev/null