#!/usr/bin/env bash

# This script downloads the latest development version of my script
# and uses it to generate the images and animations.

set -e

wget -nc https://raw.githubusercontent.com/warrickball/figures/master/animate_sph_harm_mlab.py
mkdir -p tmp 480 160

for l in $(seq 0 5)
do
    for m in $(seq 0 $l)
    do
	FILENAME="$l"_"$m".gif
	echo $FILENAME
	python3 animate_sph_harm_mlab.py -l $l -m $m --resolution 480 480 --Nphi 101 --Ntheta 101 -o 480/$FILENAME --pattern dr
	convert 480/$FILENAME -coalesce -scale 160x160 -layers Optimize 160/$FILENAME
    done
done
