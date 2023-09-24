#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem=100G
#SBATCH --time=0-18:00
#SBATCH --job-name=fastqc_trimmed
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=fastqc_trimmed
#SBATCH --account=def-manzonri

module load fastqc/0.11.9

fastqc *_paired.fq.gz --outdir ~/scratch/lwf_trimmed_reads/fastqc_trimmed_reads
