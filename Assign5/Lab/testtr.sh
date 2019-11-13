#!/usr/local/cs/bin/bash

bfile=stracebfile.txt
bterm=stracebterm.txt
ufile=straceufile.txt
uterm=straceuterm.txt

strace -o $bfile ./trb 'qwertyuiop' 'asdfghjkl;' < bigfile.txt > bigresult.txt
strace -o $ufile ./tru 'qwertyuiop' 'asdfghjkl;' < bigfile.txt > bigresult.txt

strace -o $bterm ./trb 'qwertyuiop' 'asdfghjkl;' < bigfile.txt
strace -o $uterm ./tru 'qwertyuiop' 'asdfghjkl;' < bigfile.txt
