#!/bin/bash

while IFS=' ' read -r pkg version; do
    opam install "$pkg.$version" --yes
done < opam_requirements.txt