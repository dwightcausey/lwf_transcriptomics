#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --mem=150G
#SBATCH --time=0-00:10
#SBATCH --job-name=blastn_zebra
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=blastn_zebra
#SBATCH --account=def-manzonri

module load StdEnv/2020 gcc/9.3.0 blast+/2.12.0

#make danio rerio database
makeblastdb -in zebrafish_GRCz11_rna.fna -dbtype nucl -out zebra_db

#run blastn
blastn -query combined.fasta \
             -db zebra_db -num_threads 24 \
             -max_target_seqs 10 -outfmt 6 -evalue 1e-3 \
              > zebra.blastn.outfmt6
