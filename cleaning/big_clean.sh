#!/bin/bash
DIRECTORY=$1
BASE_NAME=$(basename "$DIRECTORY" .tgz)
HERE=$(pwd)
SCRATCH=$(mktemp --directory SCRATCH-XXXXXX)
CLEAN="cleaned_$BASE_NAME.tgz"

tar -xzf "$DIRECTORY" -C "$SCRATCH" #extracts the little_dir tar archive
cd "$SCRATCH" || exit #moves to scratch dir
grep -lrIZ 'DELETE ME' . | xargs -0 rm -f #removes files that say "DELETE ME!"
tar -czf "$CLEAN" "$BASE_NAME" #compresses the contents of the scratch dir
mv "$CLEAN" "$HERE" #move comrpessed contents to "cleaning" dir
cd "$HERE" || exit
rm -r "$SCRATCH" # removes scratch dir



