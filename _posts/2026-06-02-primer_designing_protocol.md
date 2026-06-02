## **Project Title: Primer Design and Phylogenetic Analysis of *Gracilaria* sp. Using the 18S ribosomal RNA (rRNA) Gene** 

##### Noga Mano, 029354719
##### 03/06/2026

## **Primer designing protocol**
### **Introduction:**

#### Primer design is widely used for the genetic identification of organisms of scientific and/or economic importance (e.g., in agriculture and biotechnology). In a survey conducted, a red alga was identified as belonging to the genus *Gracilaria*, and the aim is to determine whether it represents a local species or a potentially invasive one.
#### For species identification, primers were designed for the 18S rRNA gene. This gene is a conserved nuclear marker widely used for molecular identification due to its combination of highly conserved regions, which enable reliable primer design, and variable regions, which allow taxonomic discrimination. However, its relatively low evolutionary rate limits its resolution at the species level, particularly among closely related taxa, and it often requires the use of additional, more variable markers. The designed primers are intended to amplify the target region for sequencing and subsequent phylogenetic analysis to determine the species identity and origin.


### **Primer designing workflow:**
#### **1.	Retrieving 18S rRNA sequences from NCBI**
-	Enter NCBI: https://www.ncbi.nlm.nih.gov/nuccore 
-	In the search line choose: Nucleotide and type the name of the organism and/or gene: Gracilaria 18S rRNA
-   Choose DNA
-	In the results:

 o	Make sure you choose Gracilaria
 
 o	Avoid "partial sequence"
 
 o	Look for: "complete sequence"
 
-	Open a WORD document.
-	Choose 6-8 results. 
-	Enter each result and press FASTA [gracilaria_seq.md](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/0bc75c9e61229e85b05f6dd92a42b5e39867acd5/gracilaria_seq.md)

- Select sequences containing minimal ambiguous bases (Ns) within the target gene region.

**Figure 1: FASTA sequence containing ambiguous bases (multi Ns)** 

![FASTA sequence containing ambiguous bases (multi Ns)](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/dbef3c00fc9e567db44f9a3bef0d71ba8c15b6e5/images/withnnnn.jpg)

**Figure 2: FASTA sequence sequence *without* ambiguous bases** 

![FASTA sequence *without* ambiguous bases](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3dc93c0219343012b07fa3f76bcb5f401959dd99/images/complete.jpg)

- Copy and paste the sequence, including its header, to the document.
 
#### **2.	Performing multiple sequence alignment (ClustalW in MEGA)**
-	Open MEGA
-	Choose: 'Align' --> Edit/Build Alignment --> Create a New Alignment
-	Copy each sequence, **including headers** from the Word document
-	Choose: Alignment --> Align by ClustalW

**Figure 3: Alignment of selected *Gracilaria* sp. 18S rRNA gene sequences**

![images/allignment.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/13d04279d461861995f35027d5f94c0c4a9dc7ff/images/allignment.jpg)

#### **3.	Identifying conserved regions across species**
-	Look at the uniformity and differences between the sequences: choose a representative complete sequence, with a conserved region  without gaps, yet variable to allow discrimination between species.

**Figure 4: Identifying conserved areas and variances after sequence alignment**

![images/conserve_versus_variance](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/29c57f4dec81c6e6c9c4e7c74ef36253ab6ba310/images/conserve_versus_variance.JPG)

#### **4.	Sequence extract for primer design**
-	Open Primer3web - https://primer3.ut.ee/
-	From the word document, copy a sequence segment of ~1000 bases from the result that you chose, and paste it into the window.
  
**NOTE: Primer3 should receive a single clean DNA sequence. Make sure you are not pasting a ClustalW alignment with gaps, stars, spaces, or multiple species**
-	Press "Pick Primers" - you get the output of the primer you designed.

**Figure 5: Paste the sequense into the open window**

![images/primer3web.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/15f5103f64180a3cd747b2b59d0ebead6d1b0d47/images/primer3web.jpg)


- Look at the first table of the output:
o Tm - the difference should not be >3 
o %GC - 40%-60%
o Hairpins - low <2

**Figure 6: The output table of the primer designed**

![images/primer_table.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/e02a55c7054ccd42fca167bee583e85017a7fd2d/images/primer_table.jpg)

 o Tm = 58.90 / 58.96 --> ✔  
 o %GC = 55% --> ✔  
 o Hairpins = 0.00 --> ✔

##### Primer3 Output link: https://primer3.ut.ee/cgi-bin/primer3/primer3web_results.cgi 

#### **5. Verification of Primer Specificity**
- Open NCBI Primer BLAST - https://www.ncbi.nlm.nih.gov/tools/primer-blast/index.cgi?GROUP_TARGET=on
- In the line "Forward primer" - copy the sequence of LEFT PRIMER from the output table of the primer designed
- In the line "Reverse primer" - copy the sequence of RIGHT PRIMER from the output table of the primer designed
- Change "Max" to 250 (fig. 7)

**Figure 7: Primer-Blast primer input**
![images/primer_blast_gracilaria.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/b87c472f5b415b3c3fe6535440d6c6e74d8da27e/images/primer_blast_gracilaria.jpg)

- In the section of "Primer Pair Specifity Checking Parameters":
 o Change 'Database' to "nt"
 o Change 'Organism' to the species you designed you primer
 o Change 'Max target amplicon size' to 4000
- Press **Get Primers**
י
**Figure 8: Primer-Blast for *Gracilaria* sp.**
![images/primer_blast_gracilaria_specific.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/06e3ed9f40c065fc51f7a8febf9f188ed9bc4eb0/images/primer_blast_gracilaria_specific.jpg)

#### **6. Recieving specific primers to PCR template**
- Get your report at the next stage of the Primer-BLAST process and save it.
- To check the specificity of the primer you have designed, repeat the process with wider options: go back one step and change 'Organism' twice (or more) to: (1) group name (e.g red algae, Rhodophyta, macroalgae) or, (2) totaly different organism (e.g fish, invertebrate).  

See Primer-BLAST results:
1. 

