#!/usr/local/cs/bin/bash

echo "" > dll.txt
for cmd in $(ls /usr/bin | awk '(NR-405140036)%251 == 0'); do
    ldd /usr/bin/$cmd | sed -r "s#^[[:space:]]+([^ ]+).*#\1#g" >> dll.txt
done

sort -u dll.txt
rm dll.txt
