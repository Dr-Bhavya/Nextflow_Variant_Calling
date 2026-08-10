#!/usr/bin/env/ nextflow

// Module INCLUDE statements
include { SAMTOOLS_INDEX } from './modules/samtools_index.nf'

params {
    // Primary input
    input: Path
}

workflow {

    main:
    // Create input channel (single file via CLI parameter)
    reads_ch = channel.fromPath(params.input)
    // Create index file for input BAM file
    SAMTOOLS_INDEX(reads_ch)

    publish:
    bam_index = SAMTOOLS_INDEX.out
}

output {
    bam_index {
        path 'bam'
    }
}
