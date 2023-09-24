#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=100G                # memory; default unit is megabytes
#SBATCH --time=6-12:00                     # time (DD-HH:MM)
#SBATCH --job-name=htseq
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=htseq
#SBATCH --account=def-manzonri

# python for htseq
module load python/3.9.6
#create environment
virtualenv --no-download python
# activate environment
source python/bin/activate
#upgrade pip
pip install --no-index --upgrade pip
#install multiqc
pip install HTSeq --no-index


htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5CHC_4659_gene.tsv /home/dcausey/scratch/alignments/5CHC_4659.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5CHC_4660_gene.tsv /home/dcausey/scratch/alignments/5CHC_4660.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5CHC_4661_gene.tsv /home/dcausey/scratch/alignments/5CHC_4661.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5CHC_4662_gene.tsv /home/dcausey/scratch/alignments/5CHC_4662.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5CHC_4663_gene.tsv /home/dcausey/scratch/alignments/5CHC_4663.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2CHC_4664_gene.tsv /home/dcausey/scratch/alignments/2CHC_4664.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2CHC_4665_gene.tsv /home/dcausey/scratch/alignments/2CHC_4665.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2CHC_4666_gene.tsv /home/dcausey/scratch/alignments/2CHC_4666.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2CHC_4667_gene.tsv /home/dcausey/scratch/alignments/2CHC_4667.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2CHC_4668_gene.tsv /home/dcausey/scratch/alignments/2CHC_4668.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0CHC_4669_gene.tsv /home/dcausey/scratch/alignments/0CHC_4669.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0CHC_4670_gene.tsv /home/dcausey/scratch/alignments/0CHC_4670.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0CHC_4671_gene.tsv /home/dcausey/scratch/alignments/0CHC_4671.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0CHC_4672_gene.tsv /home/dcausey/scratch/alignments/0CHC_4672.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0CHC_4673_gene.tsv /home/dcausey/scratch/alignments/0CHC_4673.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C0h_4674_gene.tsv /home/dcausey/scratch/alignments/2C0h_4674.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C0h_4675_gene.tsv /home/dcausey/scratch/alignments/2C0h_4675.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C0h_4676_gene.tsv /home/dcausey/scratch/alignments/2C0h_4676.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C0h_4677_gene.tsv /home/dcausey/scratch/alignments/2C0h_4677.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C0h_4678_gene.tsv /home/dcausey/scratch/alignments/2C0h_4678.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C4h_4680_gene.tsv /home/dcausey/scratch/alignments/2C4h_4680.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C4h_4681_gene.tsv /home/dcausey/scratch/alignments/2C4h_4681.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C4h_4682_gene.tsv /home/dcausey/scratch/alignments/2C4h_4682.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C4h_4683_gene.tsv /home/dcausey/scratch/alignments/2C4h_4683.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C4h_4684_gene.tsv /home/dcausey/scratch/alignments/2C4h_4684.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C12h_4685_gene.tsv /home/dcausey/scratch/alignments/2C12h_4685.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C12h_4686_gene.tsv /home/dcausey/scratch/alignments/2C12h_4686.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C12h_4687_gene.tsv /home/dcausey/scratch/alignments/2C12h_4687.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C12h_4688_gene.tsv /home/dcausey/scratch/alignments/2C12h_4688.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C12h_4689_gene.tsv /home/dcausey/scratch/alignments/2C12h_4689.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C24h_4690_gene.tsv /home/dcausey/scratch/alignments/2C24h_4690.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C24h_4691_gene.tsv /home/dcausey/scratch/alignments/2C24h_4691.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C24h_4692_gene.tsv /home/dcausey/scratch/alignments/2C24h_4692.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C24h_4693_gene.tsv /home/dcausey/scratch/alignments/2C24h_4693.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C24h_4694_gene.tsv /home/dcausey/scratch/alignments/2C24h_4694.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C48h_4695_gene.tsv /home/dcausey/scratch/alignments/2C48h_4695.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C48h_4696_gene.tsv /home/dcausey/scratch/alignments/2C48h_4696.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C48h_4697_gene.tsv /home/dcausey/scratch/alignments/2C48h_4697.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C48h_4698_gene.tsv /home/dcausey/scratch/alignments/2C48h_4698.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 2C48h_4699_gene.tsv /home/dcausey/scratch/alignments/2C48h_4699.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C0h_4700_gene.tsv /home/dcausey/scratch/alignments/5C0h_4700.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C0h_4701_gene.tsv /home/dcausey/scratch/alignments/5C0h_4701.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C0h_4702_gene.tsv /home/dcausey/scratch/alignments/5C0h_4702.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C0h_4703_gene.tsv /home/dcausey/scratch/alignments/5C0h_4703.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C0h_4704_gene.tsv /home/dcausey/scratch/alignments/5C0h_4704.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C4h_4705_gene.tsv /home/dcausey/scratch/alignments/5C4h_4705.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C4h_4706_gene.tsv /home/dcausey/scratch/alignments/5C4h_4706.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C4h_4707_gene.tsv /home/dcausey/scratch/alignments/5C4h_4707.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C4h_4708_gene.tsv /home/dcausey/scratch/alignments/5C4h_4708.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C4h_4709_gene.tsv /home/dcausey/scratch/alignments/5C4h_4709.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C12h_4710_gene.tsv /home/dcausey/scratch/alignments/5C12h_4710.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C12h_4711_gene.tsv /home/dcausey/scratch/alignments/5C12h_4711.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C12h_4712_gene.tsv /home/dcausey/scratch/alignments/5C12h_4712.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C12h_4713_gene.tsv /home/dcausey/scratch/alignments/5C12h_4713.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C12h_4714_gene.tsv /home/dcausey/scratch/alignments/5C12h_4714.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C24h_4715_gene.tsv /home/dcausey/scratch/alignments/5C24h_4715.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C24h_4716_gene.tsv /home/dcausey/scratch/alignments/5C24h_4716.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C24h_4717_gene.tsv /home/dcausey/scratch/alignments/5C24h_4717.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C24h_4718_gene.tsv /home/dcausey/scratch/alignments/5C24h_4718.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C24h_4719_gene.tsv /home/dcausey/scratch/alignments/5C24h_4719.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C0h_4720_gene.tsv /home/dcausey/scratch/alignments/0C0h_4720.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C0h_4721_gene.tsv /home/dcausey/scratch/alignments/0C0h_4721.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C0h_4722_gene.tsv /home/dcausey/scratch/alignments/0C0h_4722.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C0h_4723_gene.tsv /home/dcausey/scratch/alignments/0C0h_4723.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C0h_4724_gene.tsv /home/dcausey/scratch/alignments/0C0h_4724.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C48h_4725_gene.tsv /home/dcausey/scratch/alignments/5C48h_4725.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C48h_4726_gene.tsv /home/dcausey/scratch/alignments/5C48h_4726.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C48h_4727_gene.tsv /home/dcausey/scratch/alignments/5C48h_4727.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C48h_4728_gene.tsv /home/dcausey/scratch/alignments/5C48h_4728.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 5C48h_4729_gene.tsv /home/dcausey/scratch/alignments/5C48h_4729.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C4h_4730_gene.tsv /home/dcausey/scratch/alignments/0C4h_4730.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C4h_4731_gene.tsv /home/dcausey/scratch/alignments/0C4h_4731.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C4h_4732_gene.tsv /home/dcausey/scratch/alignments/0C4h_4732.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C4h_4733_gene.tsv /home/dcausey/scratch/alignments/0C4h_4733.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C4h_4734_gene.tsv /home/dcausey/scratch/alignments/0C4h_4734.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C12h_4735_gene.tsv /home/dcausey/scratch/alignments/0C12h_4735.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C12h_4736_gene.tsv /home/dcausey/scratch/alignments/0C12h_4736.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C12h_4737_gene.tsv /home/dcausey/scratch/alignments/0C12h_4737.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C12h_4738_gene.tsv /home/dcausey/scratch/alignments/0C12h_4738.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C12h_4739_gene.tsv /home/dcausey/scratch/alignments/0C12h_4739.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C24h_4740_gene.tsv /home/dcausey/scratch/alignments/0C24h_4740.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C24h_4741_gene.tsv /home/dcausey/scratch/alignments/0C24h_4741.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C24h_4742_gene.tsv /home/dcausey/scratch/alignments/0C24h_4742.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C24h_4743_gene.tsv /home/dcausey/scratch/alignments/0C24h_4743.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C24h_4744_gene.tsv /home/dcausey/scratch/alignments/0C24h_4744.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C48h_4745_gene.tsv /home/dcausey/scratch/alignments/0C48h_4745.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C48h_4746_gene.tsv /home/dcausey/scratch/alignments/0C48h_4746.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C48h_4747_gene.tsv /home/dcausey/scratch/alignments/0C48h_4747.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C48h_4748_gene.tsv /home/dcausey/scratch/alignments/0C48h_4748.bam /home/dcausey/scratch/lwf_db/genomic.gtf
htseq-count -n 8 --order pos --type exon --stranded reverse -i transcript_id --additional-attr=product -c 0C48h_4749_gene.tsv /home/dcausey/scratch/alignments/0C48h_4749.bam /home/dcausey/scratch/lwf_db/genomic.gtf

