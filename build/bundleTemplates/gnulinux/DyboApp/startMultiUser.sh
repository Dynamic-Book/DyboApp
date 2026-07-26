#!/bin/bash

# Start-up script when the DyboApp is installed in a read only
# direction (e.g. /opt). This script is to be used in a multi-user
# environment.  For a given user, at the inital start-up, the image is
# copied in the user space in a MyDybo directory


# Uncomment for composed key-in input
#COMPO="-compositioninput"

# Path to user data and Smalltalk image
USERDATA="$HOME/Documents/myDybo"

# Path
APP=`dirname "$0"`
ROOT=`cd "$APP";pwd`
VM="$ROOT/VM/Linux-x86_64"
RESOURCES="$ROOT/Resources"

stockImage="$RESOURCES/image"
userImage="$USERPATH/app/image"

# Does the app image exist, if no copy the app data"
if ! [ -f $userImage/dybo.image ];
then
    mkdir -p $userImage
    cp -f $stockImage/dybo.* $userImage
    cp -f $stockImage/Cuis*.sources $userImage
    cp -rf $stockImage/locale $userImage
fi


# Set icon
gio set -t string \
    "$0" \
    "metadata::custom-icon-name" \
    "file://$RESOURCES/icons/dyboapp.png" 
	
# execute
exec "$VM/squeak" $COMPO \
    --plugins "$VM" \
    --encoding utf-8 \
    -vm-display-X11 \
    --title "DyboApp" \
    "$userImage/dybo" \
    -d "Smalltalk at: #userPath put: '$USERDATA' asDirectoryEntry" \
    -d "Smalltalk at: #home put: '$HOME' asDirectoryEntry" \
    -ud "$HOME/.config/dybo"

    
