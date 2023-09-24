#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem=200G
#SBATCH --time=0-08:00
#SBATCH --job-name=build_hisat_index
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=build_hisat_index
#SBATCH --account=def-manzonri

#build genome from chromosome files, can be done in bash
#echo "$(ls chr*.fna | sort -V | grep -vP 'chr[^X|Y|\d]'; ls chr*.fna | sort -V | grep -vP 'chr[\d|X|Y]')" | xargs cat > genome.fa

#create hisat2 index
hisat2_extract_splice_sites.py genomic.gtf > genomic.ss
hisat2_extract_exons.py  genomic.gtf > genomic.exon
hisat2-build -p 6 --exon genomic.exon --ss genomic.ss genome.fa genome_tran
