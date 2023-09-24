#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=250G
#SBATCH --time=0-04:00
#SBATCH --job-name=fastqc_bam_run
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=fastqc_bam_run
#SBATCH --account=def-manzonri

module load fastqc/0.11.9

fastqc -t 8 *.bam --outdir ~/scratch/alignments/fastqc_bam
