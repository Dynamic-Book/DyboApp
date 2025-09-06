#!/bin/bash
#
# Start Dybo IDE
#

imagePath=CuisImage
dyboPath=DyboApp

# Cuis release
release=`cat $dyboPath/cuisRelease`
# version number, when dealing with rolling release
version=`ls $imagePath/Cuis$release-????.image | cut -d - -f 2 | cut -d . -f 1`
cuis=Cuis$release-$version

ide=dyboIDE
VMx86=CuisVM.app/Contents/Linux-x86_64/squeak
VMarm=CuisVM.app/Contents/Linux-arm64/squeak
VMalpine=`which spur64`
case $(uname -m) in
    x86_64) VM=$VMx86 ;;
    aarch64)
	case `cat /etc/os-release | awk -F '=' '/^NAME/ {print $2}'` in
	    "\"Alpine Linux\"") VM=$VMalpine ;;
	    *) VM=$VMarm ;;
	esac
esac

# echo $VM
# exit 0

# install image for Dybo IDE
cd $imagePath
rm $ide.image $ide.changes $ide.user.* *.log
cp $cuis.image $ide.image
cp $cuis.changes $ide.changes
cd -

$VM $imagePath/$ide -s $dyboPath/src/setupDyboDevelopment.st 
