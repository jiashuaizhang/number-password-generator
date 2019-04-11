#!/bin/bash
length=6
min=0
max=9
mod=$((max - min + 1))
temp=""
for((i=0;i<length;i++))
do
rand=$((RANDOM % mod + min))
temp=$temp$rand
done
pwd=$temp
echo $pwd
