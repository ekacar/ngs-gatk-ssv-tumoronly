# File: preprocessing.smk
# Author: Emrah Kacar
# Email: kacar.emrah@gmail.com
# Description:
# Creates analysis ready bam files according to the GATK best practices guide. 

rule bwa_index:
    input:
        "data/Homo_sapiens_assembly38.fasta",
    output:
        multiext("data/Homo_sapiens_assembly38.fasta", ".amb", ".ann", ".bwt", ".pac", ".sa"),
    singularity:
        gatk_env, 
    log:
        "logs/bwa_index.log",
    shell:
        """
        bwa index {input}
        """


