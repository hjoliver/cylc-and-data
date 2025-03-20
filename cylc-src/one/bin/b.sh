#!/bin/bash
set -eu

# This application reads text data from $B_INPUT, modifies it, and writes it
# out to $B_OUTPUT. The input must contain "fox", to be changed to "fish".

echo "Processing data"
echo "  from \"$B_INPUT\""
echo "    to \"$B_OUTPUT\""
mkdir -p $(dirname ${B_OUTPUT})

if ! grep fox $B_INPUT > /dev/null; then
    >&2 echo "Bad data in \"$B_INPUT\": the word 'fox' was not found"
    exit 1
fi

cat $B_INPUT | sed -e 's/fox/fish/' > $B_OUTPUT
echo "Done"
