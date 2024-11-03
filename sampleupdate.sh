#!/bin/bash

# URL of the raw script on GitHub
SCRIPT_URL="https://raw.githubusercontent.com/bradmcdowell/proxmox/refs/heads/main/sampleupdate.sh"

# Temporary file to download the new script
TEMP_SCRIPT="/tmp/bashscript.sh"

# Function to update the script
update_script() {
    echo "Checking for updates..."
    curl -s -o "$TEMP_SCRIPT" "$SCRIPT_URL"
    if ! cmp -s "$0" "$TEMP_SCRIPT"; then
        echo "New version found. Updating..."
        mv "$TEMP_SCRIPT" "$0"
        chmod +x "$0"
        echo "Update complete. Restarting script..."
        exec "$0" "$@"
    else
        echo "You are already using the latest version."
        rm "$TEMP_SCRIPT"
    fi
}

# Call the update function
update_script

# Your script's main functionality goes here
echo "Running the main script... V2"
# Add your main script code here
