#!/bin/bash

# Check if correct arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 hours minutes seconds"
    exit 1
fi

# Parse arguments
HOURS=$1
MINUTES=$2
SECONDS=$3

# Calculate total seconds
TOTAL_SECONDS=$((HOURS * 3600 + MINUTES * 60 + SECONDS))

echo "Timer set for $HOURS hours, $MINUTES minutes, and $SECONDS seconds."

# Countdown timer
while [ $TOTAL_SECONDS -gt 0 ]; do
    H=$((TOTAL_SECONDS / 3600))
    M=$(( (TOTAL_SECONDS % 3600) / 60 ))
    S=$((TOTAL_SECONDS % 60))
    printf "\rTime Remaining: %02d:%02d:%02d" $H $M $S
    sleep 1
    TOTAL_SECONDS=$((TOTAL_SECONDS - 1))
done
echo -e "\nTime's up!"

# Display full-screen message using AppleScript
osascript -e 'tell application "System Events" to display dialog "TIME IS UP, TAKE A BREAK!" buttons {"OK"} default button 1 with icon caution'

