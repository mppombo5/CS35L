#!/usr/local/cs/bin/bash

src=./coreutils-with-bug/src
dir=$(pwd)
tmp=$(mktemp -d)
cd $tmp
touch -d '1918-11-11 11:00 GMT' wwi-armistice-cs35L
touch now
sleep 1
touch now1
TZ=UTC0
ls -lt --full-time wwi-armistice-cs35L now now1
echo -e "\n"
cd $dir
coreutils-with-bug/src/ls -lt --full-time $tmp/wwi-armistice-cs35L $tmp/now $tmp/now1
cd
rm -rf $tmp
