#!/bin/sh

catalogues="dybo dybodoc dybotools"
languages="fr"

cd po
for cat in $catalogues; do
    cd $cat
    for l in $languages; do
	msgmerge -U $l.po $cat.pot
    done
    cd ..
done	
cd ..
