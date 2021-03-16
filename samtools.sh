#!/bin/bash

for ((i=66 ; $i<=88 ; i++))
	#convertir nos fichiers de sam à bam:
    do samtools view -S -b ERR22999${i}_1.sam > ERR22999${i}.bam
	#trier nos fichiers .bam
       samtools sort -l 9 ERR22999${i}.bam -o ERR22999${i}
	#indexer nos fichiers 
       samtools index -b ERR22999${i} ERR22999${i}.bam
done
for ((i=2 ; $i<=4 ; i++))
	#convertir nos fichiers de sam à bam:
    do samtools view -S -b ERR230025${i}.sam > ERR230025${i}.bam
	#trier nos fichiers .bam
       samtools sort -l 9 ERR230025${i}.bam -o ERR230025${i}
	#indexer nos fichiers 
       samtools index -b ERR230025${i} ERR230025${i}.bam
done
