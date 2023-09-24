#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --mem=150G
#SBATCH --time=0-00:10
#SBATCH --job-name=blastn_salmon
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=blastn_salmon
#SBATCH --account=def-manzonri


module load StdEnv/2020 gcc/9.3.0 blast+/2.12.0

#make salmo salar database
makeblastdb -in salmosalar_ICSASG_v2_rna.fna -dbtype nucl -out salmon_db

#run blastn
blastn -query combined.fasta \
             -db salmon_db -num_threads 24 \
             -max_target_seqs 10 -outfmt 6 -evalue 1e-3 \
              > salmon.blastn.outfmt6
