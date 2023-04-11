#!/bin/bash

# reset config to default howie config
sh ${0%/*}/reset_config.sh

# install addons
sh ${0%/*}/install_addons.sh
