#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=100G                # memory; default unit is megabytes
#SBATCH --time=3-00:00                     # time (DD-HH:MM)
#SBATCH --job-name=rseqc_run
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=rseqc_run
#SBATCH --account=def-manzonri


gtfToGenePred -ignoreGroupsWithoutExons /home/dcausey/scratch/lwf_db/genomic.gtf /home/dcausey/scratch/lwf_db/genomic.genePred

genePredToBed /home/dcausey/scratch/lwf_db/genomic.genePred /home/dcausey/scratch/lwf_db/genomic.bed12


module load python/3.9.6

#create environment
virtualenv --no-download python

# activate environment
source python/bin/activate

#upgrade pip
pip install --no-index --upgrade pip

#install multiqc
pip3 install RSeQC


geneBody_coverage.py -i *.bam -r ~/scratch/lwf_db/genomic.bed12 -o rseqc/

find *.bam -exec echo inner_distance.py -i {} -r ~/scratch/lwf_db/genomic.bed12 -o rseqc/{} \; | sh

find *.bam -exec echo junction_annotation.py -i {} -r ~/scratch/lwf_db/genomic.bed12 -o rseqc/{} \; | sh

find *.bam -exec echo junction_saturation.py -i {} -r ~/scratch/lwf_db/genomic.bed12 -o rseqc/{} \; | sh

find *.bam -exec echo read_distribution.py  -i {} -r ~/scratch/lwf_db/genomic.bed12 \> rseqc/{}.read_dist.txt \; | sh

find *.bam -exec echo RNA_fragment_size.py -i {} -r ~/scratch/lwf_db/genomic.bed12 \> rseqc/{}.frag_size.txt \; | sh

find *.bam -exec echo bam_stat.py -i {} \> rseqc/{}_stat.txt \; | sh

