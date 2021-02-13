#variable shell pour le genome de référence:
genref=S288C_reference_sequence_R64-2-1_20150113.fsa

#Indexer le fichier fasta pour être utiliser comme une référence :
bwa index ${genref}

#On génère d'abord les fichiers .sam

#Gérer d'abord les pair-end : bwa mem ref.fa read1.fq read2.fq > read.sam
for ((i=66 ; $i<=88 ; i++))
    do bwa mem S288C_reference_sequence_R64-2-1_20150113.fsa -R '@RG\tID:'$strain'\tPL:ILLUMINA\tPI:0\tSM:'$strain'\tLB:1' ERR22999${i}_1.fastq.gz ERR22999${i}_2.fastq.gz > ERR22999${i}.sam
done

#Gérer les single-end : bwa mem ref.fa reads.fq > read.sam  
for ((i=2 ; $i<=4  ; i++))
    do bwa mem S288C_reference_sequence_R64-2-1_20150113.fsa -R '@RG\tID:'$strain'\tPL:ILLUMINA\tPI:0\tSM:'$strain'\tLB:1' ERR230025${i}.fastq.gz > ERR230025${i}.sam
done
