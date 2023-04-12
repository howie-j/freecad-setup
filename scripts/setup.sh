#!/bin/bash

# navigate to current directory
cd $(dirname $(realpath $0))

# delete all freecad config folders and files
sh cleanup.sh

# copy config "simple.cfg" to freecad config folder as user.cfg
mkdir -pv ~/.config/FreeCAD
cp -v ../config/simple.cfg ~/.config/FreeCAD/user.cfg

# copy macro folder from git repo to home folder
mkdir -pv ~/.local/share/FreeCAD/Macro
cp -rv ../macro/. ~/.local/share/FreeCAD/Macro/

# install addons
sh addons.sh
