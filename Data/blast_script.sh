#!/bin/bash
# This is a simple example of a SGE batch script
#$ -V 
#$ -N Abomsa_blastp_job
#$ -S /bin/bash
# Make sure .e and .o files arrive in the working directory
#$ -cwd
#$ -pe parallel_smp 40



blastp -query ~/Data/Abomsa_sequences/geneAbomsa.fasta -num_threads 40 -db /work/BANK/biomaj/nt/current/flat/nt  -out  Abomsa_prot_nr.blast \
	-outfmt '7 qseqid sseqid pident length mismatch evalue bitscore staxids sccinames stitle salltitles'



#
#
#blastall -i ./work/Musa_refTEs.fna -a 8 -p blastn -d ./work/DNA_hAT_LINE_LTRCopia_LTRGypsy_unclassified.fna  -o ./work/Musa_refTE_DNA_hAT_LINE_LTRCopia_LTRGypsy_unclassified.blastn.aln
#
#parse_blast_tab.pl ./work/Musa_refTE_DNA_hAT_LINE_LTRCopia_LTRGypsy_unclassified.blastn.aln ./work/Musa_refTE_DNA_hAT_LINE_LTRCopia_LTRGypsy_unclassified.blastn.tab
#
#

