#@@# using online
circos.initializeWithIdeogram()
text(0, 0, "default", cex = 1)
  # circos.initializeWithIdeogram()
    #default = hg19 (human genome ver.19)
circos.info()
# All your sectors:
#   [1] "chr1"  "chr2"  "chr3"  "chr4"  "chr5" 
# [6] "chr6"  "chr7"  "chr8"  "chr9"  "chr10"
# [11] "chr11" "chr12" "chr13" "chr14" "chr15"
# [16] "chr16" "chr17" "chr18" "chr19" "chr20"
# [21] "chr21" "chr22" "chrX"  "chrY" 
# 
# All your tracks:
#   [1] 1 2
# 
# Your current sector.index is chrY
# Your current track.index is 2

circos.initializeWithIdeogram(species = "name")

circos.initializeWithIdeogram(chromosome.index = paste0("chr", c(3,5,2,8)))
text(0, 0, "subset of chromosomes", cex = 1)


#@@# using cytoband file 

cytoband.file = system.file(package = "circlize", "extdata", "cytoBand.txt")
circos.initializeWithIdeogram(cytoband.file)

cytoband.df = read.table(cytoband.file, colClasses = c("character", "numeric",
                                                       "numeric", "character", "character"), sep = "\t")
circos.initializeWithIdeogram(cytoband.df)