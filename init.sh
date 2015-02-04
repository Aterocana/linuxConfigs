#!/bin/bash

FILES="*"
dest="~"

for f in $FILES
do
	if [ "$f" != "init.sh" ] && [ "$f" != "README.md" ] && [ "$f" != "conky-colors-configuration" ] ; then
		move_files="$move_files $f"
	fi
done

echo -e "Do you want to copy this files to $dest directory?\n $move_files  "
read -p "[y/N] " -n 1 -r
echo #new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	for f in $move_files
	do			
		cp -R $f $dest/ && echo "$f copied to $dest/$f."	
	done
fi