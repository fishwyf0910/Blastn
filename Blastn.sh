# 建库
makeblastdb -in GWHAATD00000000.genome.fasta -dbtype nucl -parse_seqids -out hb
# 比对
blastn -query ik.fa -db hb -outfmt 7 -evalue 1e-5  -out ik-sp-hb.blastan.out -num_threads 2
