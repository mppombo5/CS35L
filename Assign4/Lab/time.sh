#!/bin/bash
badls=$HOME/35L/Assign4/Lab/coreutils-with-bug/src/ls
tmp=$(mktemp -d)
cd $tmp
touch -d '1918-11-11 11:00 GMT' wwi-armistice-cs35L
touch now
sleep 1
touch now1
TZ=UTC0 ls -lt --full-time wwi-armistice-cs35L now now1
echo ""
TZ=UTC0 $badls -lt --full-time wwi-armistice-cs35L now now1
cd
rm -fr $tmp

