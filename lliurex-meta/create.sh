#!/bin/bash


# Clean lliurex-meta
rm -r ./lliurex-meta
# 1. Copy lliurex-meta from lliurex.net
svn export https://svn.lliurex.net/xenial/lliurex-meta ./lliurex-meta

# Add extra files for extra flavours
cp -r ./llx-meta-hacks/* ./lliurex-meta/trunk/fuentes/
