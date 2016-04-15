#!/bin/bash

# Preciser sur quelle file d'attente travailler:
#$ -q normal.q

# Preciser ou travailler. cwd == current working directory
#$ -cwd 

# Preciser le nom du job
#$  -N blastn

#$ -pe openmp 3

# Faire passer toutes les variables d'environnement 
#$ -V 

blastn -query contig-1.fa -db viral.1.1.genomic.fna -outfmt 6 -num_threads 3 > resultats_blast.tsv

