#!/bin/sh

# Delete all FreeCAD config folders and files
rm -rfv ~/.local/share/FreeCAD
rm -rfv ~/.config/FreeCAD
rm -rfv ~/.cache/FreeCAD
rm -rfv ~/.cache/qtshadercache-x86_64-little_endian-lp64
rm -rfv ~/.cache/mesa_shader_cache
rm -rfv ~/.cache/qt_compose_cache_little_endian_*

# Copy config "simple.cfg" to FreeCAD Config folder as user.cfg
mkdir -p -v ~/.config/FreeCAD
cp ~/git/FreeCAD-Config/Config/simple.cfg ~/.config/FreeCAD/user.cfg

# Copy Macro folder from git repo to home folder
mkdir -p -v ~/.local/share/FreeCAD/Macro
cp -a -v ~/git/FreeCAD-Config/Macro ~/.local/share/FreeCAD

# Install Addons
mkdir -p -v ~/.local/share/FreeCAD/Mod
sh install_addons.sh


