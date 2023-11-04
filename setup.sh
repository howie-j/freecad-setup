#!/bin/bash

#############################
#	FUNCTIONS				#
#############################

cleanup () {
    # remove all freecad config folders and files
    rm -rf ~/.local/share/FreeCAD
    rm -rf ~/.config/FreeCAD
    rm -rf ~/.cache/FreeCAD
    rm -rf ~/.cache/qtshadercache-x86_64-little_endian-lp64
    rm -rf ~/.cache/mesa_shader_cache
    rm -rf ~/.cache/qt_compose_cache_little_endian_*
}

setup_freecad () {
    # copy config "simple.cfg" to freecad config folder as user.cfg
    mkdir -p ~/.config/FreeCAD
    cp ./config/simple.cfg ~/.config/FreeCAD/user.cfg

    # copy macro folder from git repo to home folder
    mkdir -p ~/.local/share/FreeCAD/Macro
    cp -r ./macro/. ~/.local/share/FreeCAD/Macro/
}

addons () {
	# install addons
    mkdir -p ~/.local/share/FreeCAD/Mod
    git clone https://github.com/Zolko-123/FreeCAD_Assembly4.git ~/.local/share/FreeCAD/Mod/Assembly4 && echo "Assembly4 installed"
    git clone https://github.com/DanMiel/QuickMeasure.git ~/.local/share/FreeCAD/Mod/QuickMeasure && echo "QuickMeasure installed"
    git clone https://github.com/obelisk79/OpenDark.git ~/.local/share/FreeCAD/Mod/OpenDark && echo "OpenDark installed"
}

usage () {
	# help/usage info
    echo "Usage: sh setup.sh [ -f ]  full howie freecad setup (remove all freecad config files)
                   [ -d ]  default freecad setup (remove all freecad config files)
                   [ -q ]  quick howie freecad setup (do not install addons)
                   [ -h ]  help"
}


# navigate to current directory
"cd $(dirname "$(realpath "$0")")"

while getopts 'fdqh' OPTION; do
  case "$OPTION" in
    f)
      cleanup
      setup_freecad
      addons
      echo "FreeCAD howie setup complete"
      ;;
    d)
      cleanup
      echo "FreeCAD restored to default setup."
      ;;
    q)
      cleanup
      setup_freecad
      echo "FreeCAD quick setup complete (no addons installed)"
      ;;
    h)
      usage
      ;;
    ?)
      usage
      ;;
  esac
done