# lwf_transcriptomics

These scripts were completed on the Cedar cluster from Compute Canada.

**Scripts were run in this order**:
- ```trim_raw_reads.sh``` used trimmomatic on raw read files, using ```adapters.fasta``` file for adapters 
     - *(Run time = 2-07:27:24)*
- ```fastqc_trimmed.sh``` created FASTQC report for all trimmed read files
     - *(Run time = 11:48:47)*
- ```multiqc_trimmed_reads.sh``` used MultiQC to create a report for all trimmed reads FASTQC output
     - This script creates a Python environment within the Cedar cluster to allow MultiQC to run
     - *(Run time = 00:08:05)*
- HISAT2 was used to align reads to the [*Coregonus clupeaformis* genome](https://www.ncbi.nlm.nih.gov/assembly/GCF_018398675.1/) (```.gtf``` file) and generate ```.sam``` files using the following scripts:
  1. A HISAT2 index was created using ```build_hisat_index.sh```, which extracts splice sites and exons
     - *(Run time = 00:20:28)*
  3. Alignments were created with ```hisat2_alignments.sh```
     - *(Run time = ~2-00:00)*
  5. ```.sam``` files were converted to ```.bam``` files using samtools in ```sam.to.bam_conversion.sh```
     - *(Run time = 05:59:07)*
  7. ```.bai``` index files were created with ```samtools_index.sh```
     - *(Run time = 03:44:31)*
  9. FASTQC reports were created for each ```.bam``` file with ```fastqc_bam.sh```
     - *(Run time = 01:52:22)*
  11. Basic alignment summaries were created using samtools with ```flagstat.sh```
      - *(Rune time = 02:15:39)*
  13. QC reports for each sample alignment were created with RSeQC using ```rseqc.sh```
      - *(Run time = ~2-12:00)*
  15. MultiQC report was created for the alignments using the same ```multiqc_alignments.sh``` (which is the same script as ```multiqc_trimmed_reads.sh```, but located in a different directory). Report output in ```multiqc_report.html```.
      - *(Run time = ~00:30:00)*
- Expression data was determined using HTSEQ using ```htseq.sh```
  - Split this script into smaller batch scripts to reduce wait time on Cedar Cluster   
  - Loaded output ```_gene.tsv``` files from htseq-count into R using edgeR
- *C. clupeaformis* sequences identified from htseq and edgeR filtering were downloaded in FASTA format via [Batch Entrez](https://www.ncbi.nlm.nih.gov/sites/batchentrez) and subsequently run against *Salmo salar* (ICSASG_v2) and *Danio rerio* (GRCz11) databases.
  - ```salmon_blastn.sh``` for *S. salar*
  - ```zebra_blastn.sh``` for *D. rerio*

