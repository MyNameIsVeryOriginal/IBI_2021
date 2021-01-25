#!/bin/bash
# md5sum premiere version

md5 =($(md5sum *fastq.gz)) 
for i in "my string"; do
    if [[ $i == !(*fastq.gz) ]]
    then
        printf '%s' "$i"
    fi
done

