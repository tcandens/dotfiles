#!/bin/bash

## Create a symbolic link of each dotfile in home directory

for file in ls .*; do
  if [ -f "$file" ]; then
    ( cp -si "$file" -t ~/ )
  fi
done
