#!/bin/bash
set -eu

# This application generates some text data in a location taken from
# the command line (--output=<file-path>).

OUTPUT=${1#--output=}
mkdir -p $(dirname ${OUTPUT})

echo "Writing data to $OUTPUT"

cat << "EOF" > $OUTPUT
The quick brown fox
jumped over the lazy dog.
EOF

echo "Done"
