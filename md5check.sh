#!/bin/bash
# md5sum premiere version

md5sum *fastq.gz > md5sum.md5

md5=($(< md5sum.md5))
files=($(< filereport_read_run_PRJEB24932_tsv.txt))

for i in "${!md5[@]}"; do
    for j in "${!files[@]}"; do
        if ! (($i % 2))
        then
            if ! (($j % 13)) && (($j != 0)) && (($j != 13))
            then
                IFS=';'
                for k in ${files[j]}; do
                    if [[ ${md5[i]} == $k ]]
                    then
                        printf "from .tsv [$k] \n"
                        printf "from .md5 [${md5[i]}] \n"
                        printf "file [%s] is verified \n" "${md5[i+1]}"
                        break
                    fi
                done
            fi
        fi
    done
done
