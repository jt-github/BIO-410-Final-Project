# Remember to use forward slashes only!
datapath <- "C:/Users/john.tolle/OneDrive - Elmhurst University/Documents/Courses/Bioinformatics/Final Project/john"

# Install/Load required libraries
use_package <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
    library(pkg, character.only = TRUE)
  }
}
use_package("Biostrings")
use_package("DECIPHER")

# Read in megahit assembly results for each sample
allcontigs <- c()
for(i in 1:6){
  contigs <- readDNAStringSet(paste0(datapath, '/t', i, '_out/final.contigs.fa'))
  allcontigs <- c(allcontigs, contigs)
}
# This loop outputs a list, so we flatten the list
allcontigs <- do.call(c, allcontigs)

# There are some small fragments of genomes in the assembly; we are only going to align the
# biggest parts (aka the ones that are bigger than 5 kbp; the genome itself is around 18 kbp).
toalign <- allcontigs[which(nchar(allcontigs) > 5000)]
names(toalign) <- 1:length(toalign)

# Align the sequences
alignment <- AlignSeqs(toalign)
# Browse the alignment (make a web page view of it)
lookatme <- BrowseSeqs(alignment)
# Make a phylogenetic tree out of the aligned sequences
mytree <- Treeline(alignment, method = "ML", showPlot = TRUE)

#Note that the browseable HTML file and phylogenetic tree were manually saved to files