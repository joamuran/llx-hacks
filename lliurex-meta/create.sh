#!/bin/bash


METAPATH="./lliurex-meta/trunk/fuentes"

# Clean lliurex-meta
rm -r ./lliurex-meta
# 1. Copy lliurex-meta from lliurex.net
svn export https://svn.lliurex.net/xenial/lliurex-meta ./lliurex-meta

# Add extra files for extra flavours
cp -r ./llx-meta-hacks/* $METAPATH/



## Modifying files ##

# control
cat ./expand-files/control >> $METAPATH/debian/control

# STRUCTURE

cat ./expand-files/STRUCTURE >> $METAPATH/seeds/lliurex/STRUCTURE

#metapackage-map

cat ./expand-files/metapackage-map  >> $METAPATH/


