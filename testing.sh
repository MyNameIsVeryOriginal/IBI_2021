#!/bin/bash
# récupération fastq md5 du fichier .tsv

files=($(< filereport_read_run_PRJEB24932_tsv.txt))

for i in "${!files[@]}"; do
    if ! (($i % 13)) && (($i != 0)) && (($i != 13))
    then
        IFS=';'
        for md5 in ${files[i]}; do

        printf '${files[%s]}=%s\n' "$i" "${files[i]}"
    fi
done


#26 39 52 65 78 91 104 117