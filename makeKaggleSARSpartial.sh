#!/bin/sh
 cd HealthHack2021/
 ls
 cat HealthHack2021-Cov2-Nucleotides.fasta | grep ">" | wc -l
 ls
 cat corona-genomes.fasta | grep ">" | wc -l
 ls
 cat HealthHack2021-Cov2-Nucleotides.fasta | head -5
 ls
 cat corona-genomes.fasta | grep ">" | wc -l
 cat SARS-genomes.fasta | grep ">" | wc -l
 cat SARS-genomes.fasta | grep ">" -A1 | wc -l
 cat SARS-genomes.fasta | grep ">" -A1 | head -4
 cat SARS-genomes.fasta | grep ">" -A1 | head -2
 cat SARS-genomes.fasta | grep ">" -A1 | head -2 > partialKaggleSARSgenomes/SARS.fasta
 sed -n -e '/>/,/>/ p' SARS-genomes.fasta
 sed -n -e '/>/,/>/ p' SARS-genomes.fasta > partialKaggleSARSgenomes/SARS.fasta
 ls
 sed -n -e '/>/,/>/ p' batSARS-genomes.fasta > partialKaggleSARSgenomes/batSARS.fasta
 sed -n -e '/>/,/>/ p' corona-genomes.fasta > partialKaggleSARSgenomes/CORONA.fasta
 cd partialKaggleSARSgenomes/
 cat SARS.fasta batSARS.fasta CORONA.fasta > CORONA-SARS-batSARS.fasta
 
 
cat ncbiSARSgenomes.fasta | grep ">" | wc -l
git clone https://github.com/krishnasd1007/chat_bot.git

git clone https://github.com/guang-zh/healthhack2021.git
git add .
cd healthhack2021
ls
git add .
git commit -m "added sars genomes"
git push origin HEAD:main
git add .
git commit -m "added phylogenetic tree for SARS genomes"
git pull origin master
git add .
git commit -m "added matlab code"
git push origin HEAD:main
