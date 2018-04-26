#!/bin/sh

if [ -z "$PLUGIN_FILE" ]; then
  PLUGIN_FILE=drone-config.yml
fi

DRONE_SERVER="$PLUGIN_SERVER" DRONE_TOKEN="$PLUGIN_TOKEN" drone-util import "$PLUGIN_FILE"