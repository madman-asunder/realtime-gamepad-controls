#!/bin/bash

source variables.sh
source encoding/encode-csv-strings.sh

echo "cleaning up prior release..."
rm -rf "$MOD_PATH/release"
mkdir "$MOD_PATH/release"

echo "releasing..."
mkdir -p "$MOD_PATH/release/$RELEASE_NAME/$MOD_NAME/content/scripts/"
source encoding/encode-ws-for-game.sh "$MOD_PATH/release/$RELEASE_NAME/$MOD_NAME/content/scripts"

pushd "$MOD_PATH" > /dev/null
cp strings/* release/$RELEASE_NAME/$MOD_NAME/content/

mkdir -p release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/
cp mod-menu.xml release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/$MOD_NAME.xml

cp -a resource/* release/$RELEASE_NAME/
cp input.settings.begin.txt release/$RELEASE_NAME/input.settings.begin.txt
cp README.md release/$RELEASE_NAME/README.md
echo "released! located at $MOD_PATH/release/$RELEASE_NAME"

popd > /dev/null