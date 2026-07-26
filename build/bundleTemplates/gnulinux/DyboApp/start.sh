#!/bin/bash

# Uncomment for composed key-in input
#COMPO="-compositioninput"

# Path
APP=`dirname "$0"`
ROOT=`cd "$APP";pwd`
VM="$ROOT/VM/Linux-x86_64"
RESOURCES="$ROOT/Resources"

image="$RESOURCES/image/dybo"
NB_ARG=$#

# Set icon
gio set \
	"$0" \
	"metadata::custom-icon" \
	"file://$RESOURCES/graphics/dyboapp.png" \
	2> /dev/null


# execute
exec "$VM/squeak" $COMPO \
    --plugins "$VM" \
    --encoding utf-8 \
    -vm-display-X11 \
    --title "DyboApp" \
    "$image" \
    -d "Smalltalk at: #home put: '$HOME' asDirectoryEntry" \
    -ud "$HOME/.config/dybo"


    
