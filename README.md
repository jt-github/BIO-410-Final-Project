# BIO-410-Final-Project
All the Bioinformatics things!

## Background
The data consists of six samples from the organism Zaire ebolavirus.  The organism is a species of viruses in the family Filoviridae.  The organism lineage is as follows: Viruses; Riboviria; Orthornavirae; Negarnaviricota; Haploviricotina; Monjiviricetes; Mononegavirales; Filoviridae.  [NIH](https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=186538) | [Encyclopedia of Life](https://eol.org/pages/741151)

## Purpose
The purpose of this project is to create a phylogenetic tree from six samples of Zaire ebolavirus in order to determine the evolutionary relationship between the samples.

## Methods
Reads were sequenced using next-generation sequencing (NGS).  Assembly was completed using [MEGAHIT](https://github.com/voutcn/megahit). Then, [BLAST](https://blast.ncbi.nlm.nih.gov/) was used to identify the organism with data taken from `final.contigs.fa` in the `t#_out` directories.  Alignment and Tree generation was completed using the ML method, both with R package DECIPHER.

Raw sequencing reads (source samples) can be found in the `source` directory.  The MEGAHIT generated files are in the various `t#_out` directories.  The output files (browseable HTML file and PNG image) are in the `output` directory.

## Results
Here is the phylogenetic tree of Zaire ebolavirus:
![phylogenetic tree of Zaire ebolavirus](https://github.com/jt-github/BIO-410-Final-Project/blob/main/output/TreelineOutput.png)

Conclusions based on the phylogenetic tree:
- Samples 1, 3, 4, and 5 are closely related to each other
- Samples 2 and 6 are closely related to each other
- These six samples (probably) came from 2 individuals
