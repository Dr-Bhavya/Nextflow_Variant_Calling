# Nextflow_Variant_Calling
Applying Nextflow to a real-world genomics use case: variant calling with GATK.

This repository demonstrates how to use Nextflow in the specific context of the genomics domain.

## 📁 Repository Structure

A reference genome consisting of a small region of the human chromosome 20 (from hg19/b37) and its accessory files (index and sequence dictionary).

Three whole genome sequencing samples corresponding to a family trio (mother, father and son), which have been subset to a small slice of data on chromosome 20 to keep the file sizes small. This is Illumina short-read sequencing data that have already been mapped to the reference genome, provided in BAM format (Binary Alignment Map, a compressed version of SAM, Sequence Alignment Map).

A list of genomic intervals, i.e. coordinates on the genome where our samples have data suitable for calling variants, provided in BED format.
