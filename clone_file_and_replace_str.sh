#!/usr/bin/env bash

if [ $# -lt 5 ]; then
  echo -e "Usage: [DIR_PATH] [SOURCE_FILE] [TARGET_FILE] [KEYWORD] [REPLACE]"
  exit 1
fi

DIR_PATH=$1
SOURCE_FILE=$2
TARGET_FILE=$3
KEYWORD=$4
REPLACE=$5

SOURCE_FILE="$DIR_PATH""$SOURCE_FILE"
TARGET_FILE="$DIR_PATH""$TARGET_FILE"

if [ ! -f $SOURCE_FILE ]; then
  echo "Source config file $SOURCE_FILE doesn't exist"
  exit 2
fi

if [ -f $TARGET_FILE ]; then
  echo "Target config file $TARGET_FILE already exists"
  exit 2
fi

curr_str="attr=\"$KEYWORD\""
new_str="att=\"$REPLACE\""

cp $SOURCE_FILE $TARGET_FILE
sed -i "s|$curr_str|$new_str|g" $TARGET_FILE

echo "$TARGET_FILE cloned from $SOURCE_FILE"
