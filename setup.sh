#!/bin/bash

# FUNCTIONS
# remove all freecad config folders and files
cleanup () {
    rm -rfv ~/.local/share/FreeCAD
    rm -rfv ~/.config/FreeCAD
    rm -rfv ~/.cache/FreeCAD
    rm -rfv ~/.cache/qtshadercache-x86_64-little_endian-lp64
    rm -rfv ~/.cache/mesa_shader_cache
    rm -rfv ~/.cache/qt_compose_cache_little_endian_*
}

# copy custom freecad setup
setup_freecad () {
    # copy config "simple.cfg" to freecad config folder as user.cfg
    mkdir -pv ~/.config/FreeCAD
    cp -v ./config/simple.cfg ~/.config/FreeCAD/user.cfg

    # copy macro folder from git repo to home folder
    mkdir -pv ~/.local/share/FreeCAD/Macro
    cp -rv ./macro/. ~/.local/share/FreeCAD/Macro/
}

# install addons
addons () {
    mkdir -pv ~/.local/share/FreeCAD/Mod

    git clone https://github.com/Zolko-123/FreeCAD_Assembly4.git ~/.local/share/FreeCAD/Mod/Assembly4
    echo "Assembly4 installed"

    git clone https://github.com/DanMiel/QuickMeasure.git ~/.local/share/FreeCAD/Mod/QuickMeasure
    echo "QuickMeasure installed"
}

# help/usage info
usage () {
    echo "Usage: sh setup.sh [ -f ]  full howie freecad setup (remove all freecad config files)
                   [ -d ]  default freecad setup (remove all freecad config files)
                   [ -q ]  quick howie freecad setup (do not install addons)
                   [ -h ]  help"
}


# navigate to current directory
cd $(dirname $(realpath $0))

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

