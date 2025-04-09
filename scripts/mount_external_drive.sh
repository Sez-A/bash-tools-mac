#!/bin/bash

# Name of your external drive (change this if yours is different)
VOLUME_NAME="PortableSSD"

# Check if the volume is mounted
if mount | grep -q "/Volumes/$VOLUME_NAME"; then
  osascript -e "display notification \"'$VOLUME_NAME' is already mounted.\" with title \"Disk Check\""
  echo "✅ '$VOLUME_NAME' is already mounted."
else
  echo "🔄 Attempting to mount '$VOLUME_NAME'..."
  
  # Try to find the disk identifier
  DISK_ID=$(diskutil list | grep "$VOLUME_NAME" | awk '{print $NF}')
  
  if [ -z "$DISK_ID" ]; then
    osascript -e "display notification \"Could not find disk with name '$VOLUME_NAME'.\" with title \"Disk Error\""
    echo "❌ Could not find disk with name '$VOLUME_NAME'."
    exit 1
  fi

  # Mount the disk
  diskutil mount "/dev/$DISK_ID"
  
  if mount | grep -q "/Volumes/$VOLUME_NAME"; then
    osascript -e "display notification \"Mounted '$VOLUME_NAME' successfully.\" with title \"Disk Check\""
    echo "✅ Mounted '$VOLUME_NAME' successfully."
  else
    osascript -e "display notification \"Failed to mount '$VOLUME_NAME'.\" with title \"Disk Error\""
    echo "❌ Failed to mount '$VOLUME_NAME'."
  fi
fi
