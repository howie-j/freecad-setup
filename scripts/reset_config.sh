#!/bin/bash

# delete all freecad config folders and files
rm -rfv ~/.local/share/FreeCAD
rm -rfv ~/.config/FreeCAD
rm -rfv ~/.cache/FreeCAD
rm -rfv ~/.cache/qtshadercache-x86_64-little_endian-lp64
rm -rfv ~/.cache/mesa_shader_cache
rm -rfv ~/.cache/qt_compose_cache_little_endian_*

# copy config "simple.cfg" to freecad config folder as user.cfg
mkdir -pv ~/.config/FreeCAD
cp -v ../config/simple.cfg ~/.config/FreeCAD/user.cfg

# copy macro folder from git repo to home folder
mkdir -pv ~/.local/share/FreeCAD/Macro
cp -rv ../macro/. ~/.local/share/FreeCAD/Macro/

# install addons
sh install_addons.sh


