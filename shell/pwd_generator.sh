#!/bin/bash
length=6
min=0
max=9
mod=$((max - min + 1))
function randomNum(){
  rand=$((RANDOM % mod + min))
  return $rand
}
temp=""
for((i=0;i<length;i++))
do
randomNum
temp=$temp$?
done
pwd=$temp
echo $pwd
