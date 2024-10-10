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
VM=CuisVM.app/Contents/Linux-x86_64/squeak

# install image for Dybo IDE
cd $imagePath
rm $ide.image $ide.changes $ide.user.* *.log
cp $cuis.image $ide.image
cp $cuis.changes $ide.changes
cd -

$VM $imagePath/$ide -s $dyboPath/src/setupDyboDevelopment.st 
