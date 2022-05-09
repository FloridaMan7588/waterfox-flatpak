#!/bin/sh
if [ -z $1 ]; then 
  echo "Specify build name as first parameter, for example:"
  echo "$0 net.waterfoxco.waterfox-g4"
  exit 1
fi

APP_NAME=$1

# The following commands should be performed once
flatpak install $APP_NAME.flatpak || true
