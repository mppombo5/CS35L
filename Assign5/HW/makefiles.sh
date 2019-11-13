#!/bin/bash

for i in {1..7}; do
    pten=$(( 10 ** $i ))
    head --bytes=$pten /dev/urandom > "file${pten}"
    echo "$pten bytes:"; echo "";
    echo "sfrob:"; time ./sfrob < "file${pten}" > /dev/null
    echo ""; echo "sfrobu:"; time ./sfrobu < "file${pten}" > /dev/null
    echo ""; echo "";
done
