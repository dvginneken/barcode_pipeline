configfile: "config.json"

rule mgatk:
  input:
    bam = #BAM file
    peaks = #cellranger atac output
  output:
    #output directory
  shell:
    """
    mgatk tenx -i {input.bam} \
    -g rCRS \
    -n lib_id -o {output} -c 5 \
    -bt CB -b {input.peaks} \
    --keep-duplicates \
    --alignment-quality -1
    """
