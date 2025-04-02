#!/bin/bash

# Function to get battery percentage
get_battery_percentage() {
    pmset -g batt | grep -Eo "[0-9]+%" | tr -d '%'
}

# Run in background
echo "Battery monitor started. It will notify you when the battery reaches 50%."

while true; do
    BATTERY_LEVEL=$(get_battery_percentage)
    
    if [ "$BATTERY_LEVEL" -eq 30 ]; then
        osascript -e 'tell application "System Events" to display dialog "Battery is at 30%!" buttons {"OK"} default button 1 with icon caution'
        exit 0
    fi
    
    sleep 60 # Check every 60 seconds
done

