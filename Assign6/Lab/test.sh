#!/bin/bash

for cmd in $(ls /usr/bin | awk '(NR-405140036)%251 == 0'); do
    echo "$cmd:"
    ldd /usr/bin/$cmd
    echo ""
done
