#!/bin/bash

get_sink_index() {
    local sink_name="$1"
    pactl list short sinks | grep output | sed -n "s/^\([0-9]\+\)[[:space:]]\+.*$sink_name.*/\1/p"
}

DESIRED_SINK_NAME="Razer_BlackShark_V2_X_USB"

sink_index=$(get_sink_index "$DESIRED_SINK_NAME")

if [ -z "$sink_index" ]; then
    echo "Error: Audio output with name '$DESIRED_SINK_NAME' not found."
    exit 1
fi

pactl set-default-sink "$sink_index"
exit 0

