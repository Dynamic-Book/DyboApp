#!/bin/bash
#
# Start Dynabook IDE
#

# Cuis Version release
cuisVersion=`cat dynabook/cuisVersion`
imageFolder=CuisImage
cuis=Cuis$cuisVersion
ide=dynabookIDE
VM=CuisVM.app/Contents/Linux-x86_64/squeak

# install image for Dynabook IDE
cd $imageFolder
rm $ide.image $ide.changes $ide.user.* *.log
cp $cuis.image $ide.image
cp $cuis.changes $ide.changes
cd -

$VM $imageFolder/$ide -s dynabook/src/app/setupDynabookDevelopment.st 
