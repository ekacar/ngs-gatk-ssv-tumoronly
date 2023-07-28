singularity: "docker://continuumio/miniconda3"
include: "rules/common.smk"

rule targets:
    input:
        "results/annotated/all.vcf.gz",
        "results/qc/multiqc.html",
        "results/plots/depths.svg",
        "results/plots/allele-freqs.svg",


include: "rules/preprocessing.smk"
include: "rules/calling.smk"
include: "rules/pon.smk"
