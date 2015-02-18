#!/bin/bash

echo "Copying configuration files"
dest="~/"
find . -type f -print0 | fgrep -zvf ignore.txt | grep -zv $0 | xargs -0 | sed -e "s/ /\n/g" | sort
echo -e "Do you want to copy these files to the \"$dest\" directory?"
read -p "[y/N] " -n 1 -r
echo #new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	find . -type f -print0 | fgrep -zvf ignore.txt | grep -zv $0 | xargs -0 cp --parents -Rt $dest
fi
