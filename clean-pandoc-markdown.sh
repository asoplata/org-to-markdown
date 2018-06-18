#!/bin/bash

sed -i.bak '
s/\s\+$//g
/^$/d
s/^#/\n#/g
s/<\/span>/:/g
s/<sup>/^/g
s/<\/sup>//g
s/<sub>/_/g
s/<\/sub>//g
s/…/.../g
s/<\/span>/:/g
s/<span.*>/:/g
s/1.  1. /1. /g
s/\\//g
' $1
