#!/bin/bash

source="[source](https://github.com/ryumingi/bookmarks/)"

# Generate tree representation of the directory w/ hyperlink
tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "${source}\n\n${tree}" > README.md

sed -i '/\[index.sh\]/d' README.md
