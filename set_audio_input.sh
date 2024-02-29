#!/bin/bash

get_source_index() {
    local source_name="$1"
    pactl list short sources | grep input | sed -n "s/^\([0-9]\+\)[[:space:]]\+.*$source_name.*/\1/p"
}

DESIRED_SOURCE_NAME="Razer_BlackShark_V2_X_USB"

source_index=$(get_source_index "$DESIRED_SOURCE_NAME")

if [ -z "$source_index" ]; then
    echo "Error: Audio output with name '$DESIRED_SOURCE_NAME' not found."
    exit 1
fi

pactl set-default-source "$source_index"
exit 0

