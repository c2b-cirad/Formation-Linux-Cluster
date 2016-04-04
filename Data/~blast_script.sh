#!/bin/bash
# This is a simple example of a SGE batch script
#$ -V 
#$ -N Abomsa_blastp_job
#$ -S /bin/bash
# Make sure .e and .o files arrive in the working directory
#$ -cwd
#$ -pe parallel_smp 30



blastp -query $1 \ 
	-num_threads 30 -db /work/BANK/biomaj/nt/current/flat/nt  -out 
	$1.blast. \
	-outfmt '7 qseqid sseqid pident length mismatch evalue bitscore staxids sccinames stitle salltitles'
