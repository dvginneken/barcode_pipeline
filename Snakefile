configfile: "config.json"

rule all:
  input:
    config['output_dir']+"/mgatk"

rule mgatk:
  input:
    bam = config['input_dir']+"/possorted_bam.bam",
    peaks = config['input_dir']+"/barcode.tsv"
  output:
    config['output_dir']+"/mgatk"
  shell:
    """
    mgatk tenx -i {input.bam} -g rCRS -n {config[lib_id]} \
    -o {output} -c 5 -bt CB -b {input.peaks} \
    --keep-duplicates --alignment-quality -1
    """
