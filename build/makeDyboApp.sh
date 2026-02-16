#!/bin/bash
#
# Build iStao image and package bundle
#
# Link the iStoa's app repository in the Cuis release folder.
# Execute the script from Cuis release folder.
# If necessary, in the Path section below, adjust istoaRepo, vmExec variables.
# Adjust below the rel variable to the wished iStoa release number

# iStoa release number
rel="26.02a"

# Path
istoaRepo=`echo "$0" | cut -d / -f 2`
buildPath="$istoaRepo/build"
bundlesPath="$buildPath/bundles"
imagePath=./CuisImage

# Cuis release
release=`cat $istoaRepo/cuisRelease`
# version number, when dealing with rolling release
version=`ls $imagePath/Cuis$release-????.image | cut -d - -f 2 | cut -d . -f 1`
if [ -z "$version" ]
then
    smalltalk=Cuis$release
else
    smalltalk=Cuis$release-$version	
fi
smalltalkSources=`ls CuisImage/Cuis?.?.sources | cut -d / -f2`

# To build iStoa we need:
# A Cuis image, its source, the virtual machine,
# the Smalltalk installation script and the iStoa source

vmExec=CuisVM.app/Contents/Linux-x86_64/squeak
installScript="$istoaRepo/src/install-istoa-workstation.st"

buildImage () {
    # INSTALL PACKAGE
    # prepare the istoa image
    rm $imagePath/istoa.*
    cp $imagePath/$smalltalk.image $imagePath/istoa.image
    cp $imagePath/$smalltalk.changes $imagePath/istoa.changes
    # install source code in the istoa image and configure it
    $vmExec $imagePath/istoa.image -s $installScript
    ls -lh $imagePath/istoa.image
    echo "--== DONE building iStoa image ==--"    
}

copyToBundle () {
    # copy a built image to an existing gnulinux bundle (for quick testing)
    bundlePath="$bundlesPath/gnulinux"
    bundleApp="$bundlePath/iStoa"
    bundleResources="$bundleApp/Resources"
    rsync -av $imagePath/istoa.{image,changes} $bundleResources/image
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
	    bundleApp="$bundlePath/iStoa"
	    cuisVM="Linux-x86_64"
	    destVM="VM"
	;;
	windows)
	    bundleApp="$bundlePath/iStoa"
	    cuisVM="Windows-x86_64"
	    destVM="VM"
	;;
	mac)
	    bundleApp="$bundlePath/iStoa.app"
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
	cp $istoaRepo/src/dkm/$dkm/License* $bundleResources/dkm/$dkm
    done
    echo "Installing OpenSmalltalk VM..."
    for i in $cuisVM
    do
	rsync -a $cuisVMPath/$i $bundleApp/$destVM/
    done
    echo "Installing Smalltalk image and changes..."
    rsync -a $imagePath/istoa.{image,changes} $bundleResources/image
    echo "Installing Smalltalk source..."
    rsync -a $imagePath/$smalltalkSources $bundleResources/image
    echo "Set exec flag and any additional specific files installation..."
    case "$1" in
	gnulinux)
	    chmod +x $bundleApp/iStoa.sh
	    chmod +x $bundleApp/VM/$cuisVM/squeak
	    ;;
	mac)
	    chmod +x $bundleApp/Contents/MacOS/Squeak
	    ;;
    esac

    echo "Preparing to build archive..."
    cd $bundlePath
    echo "Archiving the bundle..."
    zip -r --symlinks -qdgds 5m iStoa-$1-$rel.zip "`basename $bundleApp`" -x \*~
    ls -sh iStoa-$1-$rel.zip
    echo "--== DONE packaging iStoa for $1 ==--"
    echo -n "Signing..."
    gpg --armor --sign --detach-sign iStoa-$1-$rel.zip
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
	echo "Usage: makeiStoa [OPTION] [ARGUMENT]"
	echo
	echo -e "--build\t\t\t\t\tBuild iStoa image"
	echo -e "--package all|gnulinux|windows|mac\tPackage iStoa with an already built image"
	echo -e "--all\t\t\t\t\tBuild image and package for all OS"
	echo -e "--copy\t\t\t\t\\tCopy a built image to an existing gnulinux bundle"
	;;
esac
