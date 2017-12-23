#!/bin/sh

if ! which stow > /dev/null
then
	echo "Install stow first"
fi

for i in *
do
	if [ ! -d $i ]
	then
		continue
	fi
	
	echo "Adding $i" 
	stow $i
done
