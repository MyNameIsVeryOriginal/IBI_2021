#!/bin/bash

for ((i=66 ; $i<=88 ; i++))
	#convertir nos fichiers de sam à bam:
    do samtools view -Sb ERR22999${i}.sam > ERR22999${i}.nontrie.bam
	#trier nos fichiers .bam
       samtools sort ERR22999${i}.nontrie.bam ERR22999${i}
	#indexer nos fichiers 
       samtools index ERR22999${i}.bam
done
for ((i=2 ; $i<=4 ; i++))
	#convertir nos fichiers de sam à bam:
    do samtools view -Sb ERR230025${i}.sam > ERR230025${i}.nontrie.bam
	#trier nos fichiers .bam
       samtools sort ERR230025${i}.nontrie.bam ERR230025${i}
	#indexer nos fichiers 
       samtools index ERR230025${i}.bam
done
