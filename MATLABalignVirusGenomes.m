%% HealthHack2021 NCBI SARS Genomes 
clear;
clc;

%% Load amino acids and align genetic sequences
sars = fastaread('C:\Users\1\Desktop\HealthHack2021\ncbiSARSgenomes\ncbiSARSgenomes-reduced.fasta')

%% Align amino acid sequences
alignSARS = multialign(sars);

%% View amino acid alignment
seqalignviewer(alignSARS);