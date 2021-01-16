#!/bin/bash

echo "Cloning dwm repo from suckless..."
git clone git://git.suckless.org/dwm
cd dwm
echo "Applying patches..."
wget https://raw.githubusercontent.com/jcermat/install-scripts/dwm/dwm-personal.diff
patch < dwm-personal.diff
echo "Building dwm..."
if [ "$USER" = "root" ]
then
	make clean install
else
	sudo make clean install
fi
echo "Build complete."
cd ..
