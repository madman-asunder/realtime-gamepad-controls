#!/bin/bash

source variables.sh
source install.sh

# delete compiled redscripts to force recompile
pushd "$GAME_PATH" > /dev/null
rm -f content/content0/*.redscripts
pushd "$GAME_PATH/bin/$BIN_FOLDER_NAME" > /dev/null
./witcher3.exe -debugscripts &
tail -F "$W3_USER_SETTINGS_PATH/scriptslog.txt"
popd > /dev/null
popd > /dev/null