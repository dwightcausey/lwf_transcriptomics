#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --mem-per-cpu=50G                # memory; default unit is megabytes
#SBATCH --time=0-01:00                     # time (DD-HH:MM)
#SBATCH --job-name=multiqc_alignments
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=multiqc_alignments
#SBATCH --account=def-manzonri

# python for multiqc
module load python/3.9.6

#create environment
virtualenv --no-download python

# activate environment
source python/bin/activate

#upgrade pip
pip install --no-index --upgrade pip

#install multiqc
pip install multiqc --no-index

multiqc ./
