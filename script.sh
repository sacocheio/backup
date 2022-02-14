#!/bin/sh
cat header.md > README.md

cut -d, -f1,3 podcasts.csv | sed '
s/^1/🟩/
s/^0/🟥/
s/,/|/
s/\(^\|$\)/|/g
2 i | --- | --- |
' >> README.md
