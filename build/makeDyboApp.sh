#!/bin/bash
#
# Build DyboApp image and package bundle
#
# Link the dyboapp repository in the Cuis release folder.  Execute the
# script from Cuis release folder.  If necessary, in the Path section
# below, adjust dyboAppRepo, vmExec variables.  Adjust below the rel
# variable to the wished DyboApp release number

# DyboApp release number
rel="26.02a"

# Path
dyboAppRepo=`echo "$0" | cut -d / -f 2`
iStoaRepo=./iStoa
buildPath="$dyboAppRepo/build"
bundlesPath="$buildPath/bundles"
imagePath=./CuisImage

# Cuis release
release=`cat $dyboAppRepo/cuisRelease`
# version number, when dealing with rolling release
version=`ls $imagePath/Cuis$release-????.image | cut -d - -f 2 | cut -d . -f 1`
if [ -z "$version" ]
then
    smalltalk=Cuis$release
else
    smalltalk=Cuis$release-$version	
fi
smalltalkSources=`ls CuisImage/Cuis?.?.sources | cut -d / -f2`

# To build DyboApp we need:
# A Cuis image, its source, the virtual machine,
# the Smalltalk installation script and the DyboApp and iStoa/app source

vmExec=CuisVM.app/Contents/Linux-x86_64/squeak
installScript="$dyboAppRepo/src/install-dyboapp-workstation.st"

buildImage () {
    # INSTALL PACKAGE
    # prepare the dybo image
    rm $imagePath/dybo.*
    cp $imagePath/$smalltalk.image $imagePath/dybo.image
    cp $imagePath/$smalltalk.changes $imagePath/dybo.changes
    # install source code in the dybo image and configure it
    $vmExec $imagePath/dybo.image -s $installScript
    ls -lh $imagePath/dybo.image
    echo "--== DONE building DyboApp image ==--"    
}

copyToBundle () {
    # copy a built image to an existing gnulinux bundle (for quick testing)
    bundlePath="$bundlesPath/gnulinux"
    bundleApp="$bundlePath/DyboApp"
    bundleResources="$bundleApp/Resources"
    rsync -av $imagePath/dybo.{image,changes} $bundleResources/image
}

makeBundle () {
    # $1 OS target (gnulinux windows mac)
    # clean up the bundle space
    mkdir $bundlesPath
    bundlePath="$bundlesPath/$1"
    bundleTemplate="$buildPath/bundleTemplates/$1"
    cuisVMPath="CuisVM.app/Contents"
    case "$1" in
	gnulinux)
	    bundleApp="$bundlePath/DyboApp"
	    cuisVM="Linux-x86_64"
	    destVM="VM"
	;;
	windows)
	    bundleApp="$bundlePath/DyboApp"
	    cuisVM="Windows-x86_64"
	    destVM="VM"
	;;
	mac)
	    bundleApp="$bundlePath/Dybo.app"
	    cuisVM="MacOS Resources"
	    # Subfolder Resources to be considered as well
	    destVM="Contents"
	;;
    esac
    bundleResources="$bundleApp/Resources"
    echo "Cleaning previous bundles build..."
    rm -rf $bundlePath
    echo "Installing template..."
    rsync -a  --exclude '*~' $bundleTemplate $bundlesPath
    echo "Copy license terms of each dkm..."
    for dkm in `find $istoaRepo/src/dkm/* -maxdepth 1 -type d -printf "%f "`
    do
	mkdir -p $bundleResources/dkm/$dkm
	cp $iStoa/src/dkm/$dkm/License* $bundleResources/dkm/$dkm
    done
    echo "Installing OpenSmalltalk VM..."
    for i in $cuisVM
    do
	rsync -a $cuisVMPath/$i $bundleApp/$destVM/
    done
    echo "Installing Smalltalk image and changes..."
    rsync -a $imagePath/dybo.{image,changes} $bundleResources/image
    echo "Installing Smalltalk source..."
    rsync -a $imagePath/$smalltalkSources $bundleResources/image
    echo "Set exec flag and any additional specific files installation..."
    case "$1" in
	gnulinux)
	    chmod +x $bundleApp/DyboApp.sh
	    chmod +x $bundleApp/VM/$cuisVM/squeak
	    ;;
	mac)
	    chmod +x $bundleApp/Contents/MacOS/Squeak
	    ;;
    esac

    echo "Preparing to build archive..."
    cd $bundlePath
    echo "Archiving the bundle..."
    zip -r --symlinks -qdgds 5m DyboApp-$1-$rel.zip "`basename $bundleApp`" -x \*~
    ls -sh DyboApp-$1-$rel.zip
    echo "--== DONE packaging DyboApp for $1 ==--"
    echo -n "Signing..."
    gpg --armor --sign --detach-sign DyboApp-$1-$rel.zip
    echo "...DONE."
    cd -
}

# Option
# Build image:
# $1 = --build
# Package from an already built image:
# $1 = --package , $2 = all | gnulinux | windows | mac
# Build image and package all bundles:
# $1 = --all
case "$1" in
    --build)
	buildImage
	;;
    --package)
	case "$2" in
	    all)
		makeBundle "gnulinux"
		makeBundle "windows"
		makeBundle "mac"
		;;
	    gnulinux)
		makeBundle "gnulinux"
		;;
	    windows)
		makeBundle "windows"
		;;
	    mac)
		makeBundle "mac"
		;;
	    *)
		echo -e "Unknow \"$2\" --package argument.\nValid arguments are gnulinux, windows, mac."
		;;
	esac
	;;
    --all)
	buildImage
	makeBundle "gnulinux"
	makeBundle "windows"
	makeBundle "mac"	
	;;
    --copy)
	copyToBundle
	;;
    --help|*)
	echo "Usage: makeDyboApp [OPTION] [ARGUMENT]"
	echo
	echo -e "--build\t\t\t\t\tBuild DyboApp image"
	echo -e "--package all|gnulinux|windows|mac\tPackage DyboApp with an already built image"
	echo -e "--all\t\t\t\t\tBuild image and package for all OS"
	echo -e "--copy\t\t\t\t\\tCopy a built image to an existing gnulinux bundle"
	;;
esac
