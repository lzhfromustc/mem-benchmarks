#!/bin/bash

PROJECT_ROOT=$(git rev-parse --show-toplevel)

MAKEFILE="$PROJECT_ROOT/STREAM/Makefile"
if [[ ! -f "$MAKEFILE" ]]; then
  echo "Makefile not found in STREAM directory."
  exit 1
fi

cp $PROJECT_ROOT/configs/STREAM/Makefile $PROJECT_ROOT/STREAM/Makefile -f

cd $PROJECT_ROOT/STREAM
make clean
make all