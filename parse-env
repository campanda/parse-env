#!/bin/sh

for pair in $(printenv)
do
    var=$(echo "$pair" | cut -d= -f1)
    value=$(echo "$pair" | cut -d= -f2)

    sed -i "s|{{ $var }}|$value|g" "$1"
done
