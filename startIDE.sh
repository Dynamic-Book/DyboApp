#!/bin/bash
#
# Start Dynabook IDE
#

imagePath=CuisImage
# Cuis release
release=`cat dynabook/cuisRelease`
# version number, when dealing with rolling release
version=`ls $imagePath/Cuis$release-????.image | cut -d - -f 2 | cut -d . -f 1`
cuis=Cuis$release-$version

ide=dynabookIDE
VM=CuisVM.app/Contents/Linux-x86_64/squeak

# install image for Dynabook IDE
cd $imagePath
rm $ide.image $ide.changes $ide.user.* *.log
cp $cuis.image $ide.image
cp $cuis.changes $ide.changes
cd -

$VM $imagePath/$ide -s dynabook/src/app/setupDynabookDevelopment.st 
