wget ftp://ftp.ensembl.org/pub/release-101/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz -O Mus_musculus.GRCm38.101.dna.primary_assembly.fa.gz
gunzip -k Mus_musculus.GRCm38.101.dna.primary_assembly.fa.gz
# Download lamba DNA sequence manually!!
# wget https://www.ncbi.nlm.nih.gov/nuccore/J02459.1?report=fasta -O lambda_DNA_J02459.1.fa
cat lambda_DNA_J02459.1.fa >> Mus_musculus.GRCm38.101.dna.primary_assembly.fa
mv Mus_musculus.GRCm38.101.dna.primary_assembly.fa Mus_musculus.GRCm38.101.dna.primary_assembly_plus_LambdaDNA.fa
# Download bwa
# wget https://sourceforge.net/projects/bio-bwa/files/bwa-0.7.17.tar.bz2/download
# mv it to /home/guang/bio_software and unzip to "bwa-0.7.17"
# cd /home/guang/bio_software/bwa-0.7.17/; make
bwa index -p GRCm38.101.dna.primary_assembly_plus_LambdaDNA.bwaIndex -a bwtsw Mus_musculus.GRCm38.101.dna.primary_assembly_plus_LambdaDNA.fa

# [bwa_index] Pack FASTA... 13.96 sec
# [bwa_index] Construct BWT for the packed sequence...
# [BWTIncCreate] textLength=5461840552, availableWord=396315224
# [BWTIncConstructFromPacked] 10 iterations done. 99999992 characters processed.
# [BWTIncConstructFromPacked] 20 iterations done. 199999992 characters processed.
# [BWTIncConstructFromPacked] 30 iterations done. 299999992 characters processed.
# [BWTIncConstructFromPacked] 40 iterations done. 399999992 characters processed.
# [BWTIncConstructFromPacked] 50 iterations done. 499999992 characters processed.
# [BWTIncConstructFromPacked] 60 iterations done. 599999992 characters processed.
# [BWTIncConstructFromPacked] 70 iterations done. 699999992 characters processed.
# [BWTIncConstructFromPacked] 80 iterations done. 799999992 characters processed.
# [BWTIncConstructFromPacked] 90 iterations done. 899999992 characters processed.
# [BWTIncConstructFromPacked] 100 iterations done. 999999992 characters processed.
# [BWTIncConstructFromPacked] 110 iterations done. 1099999992 characters processed.
# [BWTIncConstructFromPacked] 120 iterations done. 1199999992 characters processed.
# [BWTIncConstructFromPacked] 130 iterations done. 1299999992 characters processed.
# [BWTIncConstructFromPacked] 140 iterations done. 1399999992 characters processed.
# [BWTIncConstructFromPacked] 150 iterations done. 1499999992 characters processed.
# [BWTIncConstructFromPacked] 160 iterations done. 1599999992 characters processed.
# [BWTIncConstructFromPacked] 170 iterations done. 1699999992 characters processed.
# [BWTIncConstructFromPacked] 180 iterations done. 1799999992 characters processed.
# [BWTIncConstructFromPacked] 190 iterations done. 1899999992 characters processed.
# [BWTIncConstructFromPacked] 200 iterations done. 1999999992 characters processed.
# [BWTIncConstructFromPacked] 210 iterations done. 2099999992 characters processed.
# [BWTIncConstructFromPacked] 220 iterations done. 2199999992 characters processed.
# [BWTIncConstructFromPacked] 230 iterations done. 2299999992 characters processed.
# [BWTIncConstructFromPacked] 240 iterations done. 2399999992 characters processed.
# [BWTIncConstructFromPacked] 250 iterations done. 2499999992 characters processed.
# [BWTIncConstructFromPacked] 260 iterations done. 2599999992 characters processed.
# [BWTIncConstructFromPacked] 270 iterations done. 2699999992 characters processed.
# [BWTIncConstructFromPacked] 280 iterations done. 2799999992 characters processed.
# [BWTIncConstructFromPacked] 290 iterations done. 2899999992 characters processed.
# [BWTIncConstructFromPacked] 300 iterations done. 2999999992 characters processed.
# [BWTIncConstructFromPacked] 310 iterations done. 3099999992 characters processed.
# [BWTIncConstructFromPacked] 320 iterations done. 3199999992 characters processed.
# [BWTIncConstructFromPacked] 330 iterations done. 3299999992 characters processed.
# [BWTIncConstructFromPacked] 340 iterations done. 3399999992 characters processed.
# [BWTIncConstructFromPacked] 350 iterations done. 3499999992 characters processed.
# [BWTIncConstructFromPacked] 360 iterations done. 3599999992 characters processed.
# [BWTIncConstructFromPacked] 370 iterations done. 3699999992 characters processed.
# [BWTIncConstructFromPacked] 380 iterations done. 3799999992 characters processed.
# [BWTIncConstructFromPacked] 390 iterations done. 3899999992 characters processed.
# [BWTIncConstructFromPacked] 400 iterations done. 3999999992 characters processed.
# [BWTIncConstructFromPacked] 410 iterations done. 4099999992 characters processed.
# [BWTIncConstructFromPacked] 420 iterations done. 4199999992 characters processed.
# [BWTIncConstructFromPacked] 430 iterations done. 4299999992 characters processed.
# [BWTIncConstructFromPacked] 440 iterations done. 4399999992 characters processed.
# [BWTIncConstructFromPacked] 450 iterations done. 4499999992 characters processed.
# [BWTIncConstructFromPacked] 460 iterations done. 4599999992 characters processed.
# [BWTIncConstructFromPacked] 470 iterations done. 4699999992 characters processed.
# [BWTIncConstructFromPacked] 480 iterations done. 4799899304 characters processed.
# [BWTIncConstructFromPacked] 490 iterations done. 4892728952 characters processed.
# [BWTIncConstructFromPacked] 500 iterations done. 4975232168 characters processed.
# [BWTIncConstructFromPacked] 510 iterations done. 5048557240 characters processed.
# [BWTIncConstructFromPacked] 520 iterations done. 5113724744 characters processed.
# [BWTIncConstructFromPacked] 530 iterations done. 5171641784 characters processed.
# [BWTIncConstructFromPacked] 540 iterations done. 5223114568 characters processed.
# [BWTIncConstructFromPacked] 550 iterations done. 5268859704 characters processed.
# [BWTIncConstructFromPacked] 560 iterations done. 5309514072 characters processed.
# [BWTIncConstructFromPacked] 570 iterations done. 5345643736 characters processed.
# [BWTIncConstructFromPacked] 580 iterations done. 5377751864 characters processed.
# [BWTIncConstructFromPacked] 590 iterations done. 5406285624 characters processed.
# [BWTIncConstructFromPacked] 600 iterations done. 5431642440 characters processed.
# [BWTIncConstructFromPacked] 610 iterations done. 5454175640 characters processed.
# [bwt_gen] Finished constructing BWT in 614 iterations.
# [bwa_index] 1650.80 seconds elapse.
# [bwa_index] Update BWT... 12.75 sec
# [bwa_index] Pack forward-only FASTA... 8.41 sec
# [bwa_index] Construct SA from BWT and Occ... 735.64 sec
# [main] Version: 0.7.17-r1188
# [main] CMD: bwa index -p GRCm38.101.dna.primary_assembly_plus_LambdaDNA.bwaIndex -a bwtsw Mus_musculus.GRCm38.101.dna.primary_assembly_plus_LambdaDNA.fa
# [main] Real time: 2443.695 sec; CPU: 2421.559 sec

