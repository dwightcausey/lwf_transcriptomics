#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=100G
#SBATCH --time=0-12:00
#SBATCH --job-name=sam.to.bam_conversion
#SBATCH --mail-user=dwight.causey@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --output=sam.to.bam_conversion
#SBATCH --account=def-manzonri


samtools sort -@ 8 -o 5CHC_4659.bam 5CHC_4659.sam
samtools sort -@ 8 -o 5CHC_4660.bam 5CHC_4660.sam
samtools sort -@ 8 -o 5CHC_4661.bam 5CHC_4661.sam
samtools sort -@ 8 -o 5CHC_4662.bam 5CHC_4662.sam
samtools sort -@ 8 -o 5CHC_4663.bam 5CHC_4663.sam
samtools sort -@ 8 -o 2CHC_4664.bam 2CHC_4664.sam
samtools sort -@ 8 -o 2CHC_4665.bam 2CHC_4665.sam
samtools sort -@ 8 -o 2CHC_4666.bam 2CHC_4666.sam
samtools sort -@ 8 -o 2CHC_4667.bam 2CHC_4667.sam
samtools sort -@ 8 -o 2CHC_4668.bam 2CHC_4668.sam
samtools sort -@ 8 -o 0CHC_4669.bam 0CHC_4669.sam
samtools sort -@ 8 -o 0CHC_4670.bam 0CHC_4670.sam
samtools sort -@ 8 -o 0CHC_4671.bam 0CHC_4671.sam
samtools sort -@ 8 -o 0CHC_4672.bam 0CHC_4672.sam
samtools sort -@ 8 -o 0CHC_4673.bam 0CHC_4673.sam
samtools sort -@ 8 -o 2C0h_4674.bam 2C0h_4674.sam
samtools sort -@ 8 -o 2C0h_4675.bam 2C0h_4675.sam
samtools sort -@ 8 -o 2C0h_4676.bam 2C0h_4676.sam
samtools sort -@ 8 -o 2C0h_4677.bam 2C0h_4677.sam
samtools sort -@ 8 -o 2C0h_4678.bam 2C0h_4678.sam
samtools sort -@ 8 -o 2C4h_4680.bam 2C4h_4680.sam
samtools sort -@ 8 -o 2C4h_4681.bam 2C4h_4681.sam
samtools sort -@ 8 -o 2C4h_4682.bam 2C4h_4682.sam
samtools sort -@ 8 -o 2C4h_4683.bam 2C4h_4683.sam
samtools sort -@ 8 -o 2C4h_4684.bam 2C4h_4684.sam
samtools sort -@ 8 -o 2C12h_4685.bam 2C12h_4685.sam
samtools sort -@ 8 -o 2C12h_4686.bam 2C12h_4686.sam
samtools sort -@ 8 -o 2C12h_4687.bam 2C12h_4687.sam
samtools sort -@ 8 -o 2C12h_4688.bam 2C12h_4688.sam
samtools sort -@ 8 -o 2C12h_4689.bam 2C12h_4689.sam
samtools sort -@ 8 -o 2C24h_4690.bam 2C24h_4690.sam
samtools sort -@ 8 -o 2C24h_4691.bam 2C24h_4691.sam
samtools sort -@ 8 -o 2C24h_4692.bam 2C24h_4692.sam
samtools sort -@ 8 -o 2C24h_4693.bam 2C24h_4693.sam
samtools sort -@ 8 -o 2C24h_4694.bam 2C24h_4694.sam
samtools sort -@ 8 -o 2C48h_4695.bam 2C48h_4695.sam
samtools sort -@ 8 -o 2C48h_4696.bam 2C48h_4696.sam
samtools sort -@ 8 -o 2C48h_4697.bam 2C48h_4697.sam
samtools sort -@ 8 -o 2C48h_4698.bam 2C48h_4698.sam
samtools sort -@ 8 -o 2C48h_4699.bam 2C48h_4699.sam
samtools sort -@ 8 -o 5C0h_4700.bam 5C0h_4700.sam
samtools sort -@ 8 -o 5C0h_4701.bam 5C0h_4701.sam
samtools sort -@ 8 -o 5C0h_4702.bam 5C0h_4702.sam
samtools sort -@ 8 -o 5C0h_4703.bam 5C0h_4703.sam
samtools sort -@ 8 -o 5C0h_4704.bam 5C0h_4704.sam
samtools sort -@ 8 -o 5C4h_4705.bam 5C4h_4705.sam
samtools sort -@ 8 -o 5C4h_4706.bam 5C4h_4706.sam
samtools sort -@ 8 -o 5C4h_4707.bam 5C4h_4707.sam
samtools sort -@ 8 -o 5C4h_4708.bam 5C4h_4708.sam
samtools sort -@ 8 -o 5C4h_4709.bam 5C4h_4709.sam
samtools sort -@ 8 -o 5C12h_4710.bam 5C12h_4710.sam
samtools sort -@ 8 -o 5C12h_4711.bam 5C12h_4711.sam
samtools sort -@ 8 -o 5C12h_4712.bam 5C12h_4712.sam
samtools sort -@ 8 -o 5C12h_4713.bam 5C12h_4713.sam
samtools sort -@ 8 -o 5C12h_4714.bam 5C12h_4714.sam
samtools sort -@ 8 -o 5C24h_4715.bam 5C24h_4715.sam
samtools sort -@ 8 -o 5C24h_4716.bam 5C24h_4716.sam
samtools sort -@ 8 -o 5C24h_4717.bam 5C24h_4717.sam
samtools sort -@ 8 -o 5C24h_4718.bam 5C24h_4718.sam
samtools sort -@ 8 -o 5C24h_4719.bam 5C24h_4719.sam
samtools sort -@ 8 -o 0C0h_4720.bam 0C0h_4720.sam
samtools sort -@ 8 -o 0C0h_4721.bam 0C0h_4721.sam
samtools sort -@ 8 -o 0C0h_4722.bam 0C0h_4722.sam
samtools sort -@ 8 -o 0C0h_4723.bam 0C0h_4723.sam
samtools sort -@ 8 -o 0C0h_4724.bam 0C0h_4724.sam
samtools sort -@ 8 -o 5C48h_4725.bam 5C48h_4725.sam
samtools sort -@ 8 -o 5C48h_4726.bam 5C48h_4726.sam
samtools sort -@ 8 -o 5C48h_4727.bam 5C48h_4727.sam
samtools sort -@ 8 -o 5C48h_4728.bam 5C48h_4728.sam
samtools sort -@ 8 -o 5C48h_4729.bam 5C48h_4729.sam
samtools sort -@ 8 -o 0C4h_4730.bam 0C4h_4730.sam
samtools sort -@ 8 -o 0C4h_4731.bam 0C4h_4731.sam
samtools sort -@ 8 -o 0C4h_4732.bam 0C4h_4732.sam
samtools sort -@ 8 -o 0C4h_4733.bam 0C4h_4733.sam
samtools sort -@ 8 -o 0C4h_4734.bam 0C4h_4734.sam
samtools sort -@ 8 -o 0C12h_4735.bam 0C12h_4735.sam
samtools sort -@ 8 -o 0C12h_4736.bam 0C12h_4736.sam
samtools sort -@ 8 -o 0C12h_4737.bam 0C12h_4737.sam
samtools sort -@ 8 -o 0C12h_4738.bam 0C12h_4738.sam
samtools sort -@ 8 -o 0C12h_4739.bam 0C12h_4739.sam
samtools sort -@ 8 -o 0C24h_4740.bam 0C24h_4740.sam
samtools sort -@ 8 -o 0C24h_4741.bam 0C24h_4741.sam
samtools sort -@ 8 -o 0C24h_4742.bam 0C24h_4742.sam
samtools sort -@ 8 -o 0C24h_4743.bam 0C24h_4743.sam
samtools sort -@ 8 -o 0C24h_4744.bam 0C24h_4744.sam
samtools sort -@ 8 -o 0C48h_4745.bam 0C48h_4745.sam
samtools sort -@ 8 -o 0C48h_4746.bam 0C48h_4746.sam
samtools sort -@ 8 -o 0C48h_4747.bam 0C48h_4747.sam
samtools sort -@ 8 -o 0C48h_4748.bam 0C48h_4748.sam
samtools sort -@ 8 -o 0C48h_4749.bam 0C48h_4749.sam

