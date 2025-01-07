conda activate blast

# 建库
makeblastdb -in GWHAATD00000000.genome.fasta -dbtype nucl -parse_seqids -out hb  # 核酸
makeblastdb -dbtype prot -in GCF_018340385.1_ASM1834038v1_protein.faa -parse_seqids -out db-SP  # 蛋白

# 比对
blastn -query ik.fa -db hb -outfmt 7 -evalue 1e-5  -out ik-sp-hb.blastan.out -num_threads 2
blastp -query trpm8.NP_076985.4.fa -db db-SP -out trpm8.output.blastp -evalue 1e-5
