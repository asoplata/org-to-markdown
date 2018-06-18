#!/bin/bash

# This super weird bash thing "${1%%.*}" uses built-in bash functionality
# to strip the extension from the filename; see here:
# https://stackoverflow.com/questions/538504/uses-for-this-bash-filename-extraction-technique

pandoc ${1%%.*}.org \
    --from=org --to=gfm \
    --output=${1%%.*}.md
