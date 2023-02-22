#!/bin/bash
#PBS -l walltime=30:0:00
#PBS -l mem=40gb
#PBS -l nodes=1:ppn=5
#PBS -q batch
#PBS -N pipeline_SRR11539031 
#PBS -o /data/users/mvanginn/CellLineageTracing/barcode_pipeline/pipeline_SRR11539031.log
#PBS -e //data/users/mvanginn/CellLineageTracing/barcode_pipeline/pipeline_SRR11539031.err

source ~/.bashrc
export PS1=
conda activate barcoding-pipeline
echo "Activated environment"

Snakemake
echo "Finished pipeline"
