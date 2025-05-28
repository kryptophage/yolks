#!/bin/bash
cd /home/container

# Replace variables in the startup command
MODIFIED_STARTUP=$(echo "$STARTUP" | sed -e 's/{{\([A-Z_][A-Z0-9_]*\)}}/${\1}/g')

# Execute the startup command
eval echo "$MODIFIED_STARTUP"
