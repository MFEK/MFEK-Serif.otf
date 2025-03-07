#!/bin/bash

if [[ ! -d ../fonts/webfonts ]]; then
    mkdir ../fonts/webfonts
fi

for font in ../fonts/ttf/*; do
    FN=`basename "$font"`
    fonttools ttLib.woff2 compress "$font" --output-file "../fonts/webfonts/"$FN".woff2"
done
