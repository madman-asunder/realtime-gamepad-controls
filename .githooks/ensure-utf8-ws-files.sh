#!/bin/bash

pushd scripts > /dev/null
source variables.sh

pushd "$MOD_PATH/src" > /dev/null

for SOURCE_FILE in `find . -iname "*.ws"`; do
  ENCODING=`file -bi $SOURCE_FILE`
  ENCODING=${ENCODING##*=}
  if [ "$ENCODING" == "binary" ]; then 
    BAD_ENCODING=true
  fi
  if [ "$ENCODING" == "utf-16le" ]; then
    BAD_ENCODING=true
  fi
  if [ "$ENCODING" == "utf-16be" ]; then
    BAD_ENCODING=true
  fi
  if [ "$ENCODING" == "utf-16" ]; then
    BAD_ENCODING=true
  fi
done

if [ $BAD_ENCODING == true ]; then
    echo "found ws files with wrong encoding. please run scripts/encoding/encode-ws-utf8.sh. aborting commit..."
    exit 1
fi

popd > /dev/null
popd > /dev/null