#! /bin/bash

for ((i=2; i<=$(df | wc -l); i++)); do

  size=$(df | awk '{print $5}' | awk "NR==$i")
  disk=$(df | awk '{print $6}' | awk "NR==$i")

 if [ ${size%\%} -gt 20 ]; then
   echo "[!] $disk - $size"
 fi
done
