#!/bin/bash

# game paths (change to your path if you are a developer who cloned this repo. don't commit changes)
GAME_PATH="D:/programs/steam/steamapps/common/The Witcher 3"
BIN_FOLDER_NAME="x64"
W3_USER_SETTINGS_PATH="C:/Users/Adam/Documents/The Witcher 3"

# mod vars
NEXUS_MOD_ID=7475
MOD_NAME="modW3ReduxRGC"
RELEASE_NAME="RealtimeGamepadControls"

# ensure prehooks are set up :)
git config --local core.hooksPath .githooks

# do not update anything below this line
pushd .. > /dev/null
MOD_PATH=`pwd`
popd > /dev/null