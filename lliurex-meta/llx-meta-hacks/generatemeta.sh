#!/bin/bash
germinate-update-metapackage --nodch
git status meta* | grep "M" | awk '{ print $2 }' | xargs git diff | grep -e "^+[^+]" | sed -e "s%^+%%g" | sort -u > /tmp/addpackages
git status meta* | grep "M" | awk '{ print $2 }' | xargs git diff | grep -e "^-[^-]" | sed -e "s%^-%%g" | sort -u > /tmp/removepackages
packages=$(cat /tmp/addpackages | tr "\n" ",")
dch -i -U "Add ${packages::-1}"
#dch "Add ${packages::-1}"
packages=$(cat /tmp/removepackages | tr "\n" ",")
dch "Remove ${packages::-1}"
