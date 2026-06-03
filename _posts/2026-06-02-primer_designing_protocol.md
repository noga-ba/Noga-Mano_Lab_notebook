## **Designing primers for algal species identification: Primer Design and Phylogenetic Analysis of *Gracilaria* sp. Using the 18S ribosomal RNA (rRNA) Gene**

##### Noga Mano, 029354719
##### 03/06/2026

## **Designing primers for algal species identification**
### **Introduction:**

#### Primer design is widely used for the genetic identification of organisms of scientific and/or economic importance (e.g., in agriculture and biotechnology). In a survey conducted, a red alga was identified as belonging to the genus *Gracilaria*, and the aim is to determine whether it represents a local species or a potentially invasive one.
#### For species identification, primers were designed for the 18S rRNA gene. This gene is a conserved nuclear marker widely used for molecular identification due to its combination of highly conserved regions, which enable reliable primer design, and variable regions, which allow taxonomic discrimination. However, its relatively low evolutionary rate limits its resolution at the species level, particularly among closely related taxa, and it often requires the use of additional, more variable markers. The designed primers are intended to amplify the target region for sequencing and subsequent phylogenetic analysis to determine the species identity and origin.


### **Primer designing workflow:**
#### **1.	Collecting 18S rRNA sequences from NCBI**
-	Enter NCBI: https://www.ncbi.nlm.nih.gov/nuccore 
-	In the search line choose: 'Nucleotide'
-	Type the name of the target organism and/or the gene (e.g. Gracilaria 18S rRNA)
- Choose **DNA**
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
- Edit the sequenced species names according to your WORD doc. (or go back to NCBI search): Mark the sequences number and 'edit sequence name'.
- Save the document.
 
#### **2.	Performing multiple sequence alignment (ClustalW in MEGA)**
-	Open MEGA software
-	Choose: 'Align' --> Edit/Build Alignment --> Create a New Alignment
-	Copy each sequence, **including headers** from the Word document
-	Choose: Alignment --> Align by ClustalW
-	Save as .MAS file (e.g [results/Gracilaria18SrRNA_02062026.1.mas](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3eb98a39b4ebd5ae90bbe31488d83c787412aa2a/results/Gracilaria18SrRNA_02062026.1.mas)) 

**Figure 3: Alignment of selected *Gracilaria* sp. 18S rRNA gene sequences**

![images/allignment_gracilaria.JPG](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/ceb90de5cd8d96bfd4c4495bed0d2d271a784980/images/allignment_gracilaria.JPG)

#### **3.	Identifying conserved regions across species**
-	Look at the uniformity and differences between the sequences: choose a representative complete sequence, with a conserved region  without gaps, yet variable to allow discrimination between species.

**Figure 4: Identifying conserved areas and variances after sequence alignment**

![images/conserve_versus_variance.JPG](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/ceb90de5cd8d96bfd4c4495bed0d2d271a784980/images/conserve_versus_variance.JPG)

#### **4.	Sequence extract for primer design**
-	Open Primer3web - https://primer3.ut.ee/
-	From the word document, copy a sequence segment of ~1000 bases from the result that you chose, and paste it into the window.
  
**NOTE: Primer3 should receive a single clean DNA sequence. Make sure you are not pasting a ClustalW alignment with gaps, stars, spaces, or multiple species**
-	Press "Pick Primers" - you get the output of the primer you designed.

**Figure 5: Pasting the sequense into the central window**

![images/primer3web.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/15f5103f64180a3cd747b2b59d0ebead6d1b0d47/images/primer3web.jpg)


- Look at the first table of the output, and identify:

 o Forward primer (LEFT = >>>>>>) sequence & position

 o Reverse primer (RIGHT = <<<<<<) sequence & position
 
 o Primer length
 
 o Tm - the difference should not be >3 
 
 o %GC - 40%-60%
 
 o Hairpins - low <2
 
 o Expected amplicon size


**Figure 6: The output table of the primer designed for *Gracilaria***

![images/primer_table.jpg](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/e02a55c7054ccd42fca167bee583e85017a7fd2d/images/primer_table.jpg)

##### Primer3 Output link: https://primer3.ut.ee/cgi-bin/primer3/primer3web_results.cgi 

**Primer designed data for *Gracilaria***
###### o Forward primer sequence: TGAGAGACGGCTACCACATC. Position - starts at 354
 
###### o Reverse primer sequence: TCTGCTGGCTCCTCGATAAG. Position - starts at 507
 
###### o Primer length: 20 | 20
 
###### o Tm = 58.90 | 58.96 --> ✔  
 
###### o %GC = 55% | 55% --> ✔  
 
###### o Hairpins = 0.00 --> ✔
 
###### o Expected amplicon size: 1050
 
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
1. *Gracilaria* 18S rRNA [results/primerblast_gracilaria_18S_rRNA.txt](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3d0f959141375aaeef75440b3f1e881def80549a/results/primerblast_gracilaria_18S_rRNA.txt)
2. Red algae - Rhodophyta [results/primerblast_rhodophyta.txt](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3d0f959141375aaeef75440b3f1e881def80549a/results/primerblast_rhodophyta.txt)
3. Animal - wild sheep [results/primerblast_wild-sheep.txt](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3d0f959141375aaeef75440b3f1e881def80549a/results/primerblast_wild-sheep.txt)
4. General - "Organism" [results/primerblast_organism.txt](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/3d0f959141375aaeef75440b3f1e881def80549a/results/primerblast_organism.txt)


## **Construct a phylogenetic tree**
##### **A phylogenetic tree is constructed to infer evolutionary relationships among organisms and to accurately identify species by comparing genetic sequences and determining their similarity to known taxa.**

1. Based on the protocol above, go back to MEGA software
2. Open your .MAS file
3. Press **'PHYLOGENY'** icon
4. Choose **'Construct/Test Neighbour-Joining Tree'** --> **OK**
5. In the openning table, change:
- 'Test of phylogeny' to **'Boostrap method'**
- 'Substitution' to **'Nucleotide'**
- 'Model/Method' to **'Kimura 2-parameter model'**
6. Get the output and save.

**Figure 9: *Gracilaria* Phylogeny Tree output**
![images/phylogenytree_gracilaria_names.JPG](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/49de627dc76f491b3f90013d1c076b1ba0299c7e/images/phylogenytree_gracilaria_names.JPG)

##### *Gracilaria* Phylogeny Tree output file: [results/Gracilaria18SrRNA_02062026.2.mtsx](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/b523d72a6b1fe99e1701aac5f7d5d4979dc5cbfc/results/Gracilaria18SrRNA_02062026.2.mtsx)
  
### Summary 
The *Gracilaria* phylogenetic tree (fig. 9) was constructed using the Neighbor‑Joining method with the Kimura 2-parameter model and 100 bootstrap replicates. The phylogenetic tree shows the relationships among several *Gracilaria* species based on 18S rRNA sequences. All included species (*Gracilaria textorii*, *G. debilis*, *G. salicornia*, *G. foliifera*, and *G. fergusonii*) cluster within the same general group, indicating their genetic similarity at the genus level. The analyzed sequence groups within this Gracilaria cluster, supporting its classification within the genus. However, the relatively low bootstrap values (43 and 64), suggest weak to moderate support for the branching pattern, indicating limited resolution. This result is consistent with the conserved nature of the 18S rRNA gene, which may not provide sufficient variability for reliable species-level discrimination.

