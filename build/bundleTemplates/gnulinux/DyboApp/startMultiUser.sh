#!/bin/bash

# Start-up script when the DyboApp is installed in a read only
# direction (e.g. /opt). This script is to be used in a multi-user
# environment.  For a given user, at the inital start-up, the image is
# copied in the user space in a MyDybo directory


# Path to user data and Smalltalk image in HOME directory
USERDATA="Documents/myDybo"
USERDATAPATH="$HOME/$USERDATA"
# Uncomment for composed key-in input
#COMPO="-compositioninput"

# Path
ROOT=`readlink -f $(dirname $0)`
APP=`dirname "$0"`
APP=`cd "$APP";pwd`
VM="$APP/VM/Linux-x86_64"
RESOURCES="$APP/Resources"

stockImage="$RESOURCES/image"
userImage="$USERDATAPATH/Resources/image"

# Does the USERDATA folder exist, if no create it and populate it"
if ! [ -f $userImage/dybo.image ];
then
    mkdir -p $userImage $USERDATAPATH/myPDF $USERDATAPATH/userData/myScripts
    cp -f $stockImage/dybo.* $userImage
    cp -f $stockImage/Cuis*.sources $userImage
    cp -rf $stockImage/locale $userImage
fi


# Icon (note: gvfs-set-attribute is found in gvfs-bin on Ubuntu
# systems and it seems to require an absolute filename)
	
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
    -d "Smalltalk at: #userPath put: '$USERDATAPATH' asDirectoryEntry" \
    -d "Smalltalk at: #home put: '$HOME' asDirectoryEntry" \
    -ud "$USERDATAPATH/Resources"

    
