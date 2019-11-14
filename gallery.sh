#!/usr/bin/env bash

# Generate the text to go under "Gallery" in `README.md`.

for l in $(seq 0 5)
do
    for m in $(seq 0 $l)
    do
	echo "![(l,m)=($l,$m)](https://raw.githubusercontent.com/warrickball/spherical-harmonics/master/160/${l}_${m}.gif \"(l,m)=($l,$m)\")"
    done
done
