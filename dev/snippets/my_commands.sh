#!/bin/bash

while getopts ":lpcdf:" opt; do 
case $opt in 
l) 
ls -l
echo "ls -l was performed" >&2 
;; 
p) 
pwd
echo "pwd was performed" >&2 
;; 
c) 
cat sometext1.txt
echo "- cat performed on sometext1" >&2 
;; 
d) 
cd ~/dev 
pwd
echo "changed to home directory then into dev" >&2 
;; 
f) 
'cd ~/dev/ return'
echo "changed to home directory then into dev" >&2 
;; 
\?) 
echo "Invalid option: -$OPTARG" >&2 
;; 
esac 
done