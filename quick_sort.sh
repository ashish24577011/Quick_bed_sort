#!/bin/bash

#to create files
zcat shuf.a.bed.gz shuf.b.bed.gz | awk '{print $0>>$1".bed"}'

#snakemake rule
snakemake --snakefile smt.smk completed_sorting/for_files.bed -j1 
