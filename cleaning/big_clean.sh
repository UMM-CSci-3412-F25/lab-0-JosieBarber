#!/bin/bash

LITTLE=little_dir.tgz
BIG=big_dir.tgz

SCRATCH_BIG=$(mktemp --directory SCRATCH_big-XXXXXX)
SCRATCH_LITTLE=$(mktemp --directory SCRATCH_little-XXXXXX)

tar -xzf $LITTLE -C  $SCRATCH_LITTLE #extracts the little_dir tar archive
tar -xzf $BIG -C  $SCRATCH_BIG #extracts the big_dir tar archive
