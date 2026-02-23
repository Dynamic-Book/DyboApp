#!/bin/sh

catalogues="dybo dybodoc dybotools"
languages="fr"

# clean up
rm -rf locale

# Compile .po files
for l in $languages; do
    mkdir -p locale/$l/LC_MESSAGES
    for cat in $catalogues; do
	msgfmt po/$cat/$l.po -o locale/$l/LC_MESSAGES/$cat.mo
    done
done
