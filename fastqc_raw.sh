#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem=100G
#SBATCH --time=1-00:00
#SBATCH --job-name=fastqc_raw
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=fastqc_raw
#SBATCH --account=def-manzonri

module load fastqc/0.11.9

raw_read_list=raw_lwf_reads.txt
string="sed -n "$SLURM_ARRAY_TASK_ID"p ${raw_read_list}"
read=$($string) 

fastqc $read --outdir ~/projects/def-manzonri/dcausey/lwf_data/fastqc_raw_output
