#!/bin/bash

# install addons
mkdir -pv ~/.local/share/FreeCAD/Mod

git clone https://github.com/Zolko-123/FreeCAD_Assembly4.git ~/.local/share/FreeCAD/Mod/Assembly4
echo "Assembly4 installed"

git clone https://github.com/DanMiel/QuickMeasure.git ~/.local/share/FreeCAD/Mod/QuickMeasure
echo "QuickMeasure installed"
