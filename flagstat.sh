#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --mem-per-cpu=100G                # memory; default unit is megabytes
#SBATCH --time=0-08:00                     # time (DD-HH:MM)
#SBATCH --job-name=flagstat_run
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=flagstat_run
#SBATCH --account=def-manzonri


find *.bam -exec echo samtools flagstat {} \> flagstat/{}.flagstat \; | sh

