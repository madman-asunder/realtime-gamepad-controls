#!/bin/bash

source variables.sh

source encode-csv-strings.sh

# install scripts
pushd $MOD_PATH

mkdir -p "$GAME_PATH/mods/$MOD_NAME/content/scripts"
rm -rf "$GAME_PATH/mods/$MOD_NAME/content/scripts/*"
cp -a src/* "$GAME_PATH/mods/$MOD_NAME/content/scripts/"
cp strings/* "$GAME_PATH/mods/$MOD_NAME/content/"
cp mod-menu.xml "$GAME_PATH/bin/config/r4game/user_config_matrix/pc/$MOD_NAME.xml"

pushd "$W3_USER_SETTINGS_PATH"

cat "$MOD_PATH/input.settings.begin.txt" >> input.settings

popd
popd