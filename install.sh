#!/bin/bash

# Set effect name
export NAME="scalefromcursor"

# Check if DESTDIR is set
if [ -z "$DESTDIR" ]; then
    # If DESTDIR is not set and the user is root, set it to /usr
    if [ "$(id -u)" -eq 0 ]; then
        DESTDIR="/usr/share"
    else
        # Otherwise, set it to the user's home directory
        DESTDIR="$HOME/.local/share"
    fi
fi

# Create the directory if it does not exist
mkdir -p "$DESTDIR/kwin/effects"

# Copy the 'foldingpopups' directory to $DESTDIR/kwin/effects/
cp -r "$NAME" "$DESTDIR/kwin/effects/"

echo "$NAME has been copied to $DESTDIR/kwin/effects/"
