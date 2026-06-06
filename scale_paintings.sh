#!/bin/sh
# requires imagemagick
for file in ./original/*.png; do
    # Uppercase First Letter
    newname=$(basename "''${file%.png}" | sed 's/_/ /g' | sed 's/\b\(.\)/\u\1/g')

    # scale nearest neighbour
    magick "$file" \
        -scale 1024x1024 \
        "scaled/${newname}.png"
done

