#**Project Title: Primer Design and Phylogenetic Analysis of *Gracilaria* sp. Using the 18S ribosomal RNA (rRNA) Gene** 

### Noga Mano, 029354719
### 03/06/2026

## **Primer designing protocol**
### **Introduction:**

#### Primer design is widely used for the genetic identification of organisms of scientific and/or economic importance (e.g., in agriculture and biotechnology). In a survey conducted, a red alga was identified as belonging to the genus *Gracilaria*, and the aim is to determine whether it represents a local species or a potentially invasive one.
##### For species identification, primers were designed for the 18S rRNA gene. This gene is a conserved nuclear marker widely used for molecular identification due to its combination of highly conserved regions, which enable reliable primer design, and variable regions, which allow taxonomic discrimination. However, its relatively low evolutionary rate limits its resolution at the species level, particularly among closely related taxa, and it often requires the use of additional, more variable markers. The designed primers are intended to amplify the target region for sequencing and subsequent phylogenetic analysis to determine the species identity and origin.

### **Primer designing workflow:**
#### **1.	Retrieving 18S rRNA sequences from NCBI**
> -	Enter NCBI: https://www.ncbi.nlm.nih.gov/nuccore 
> -	In the search line choose: Nucleotide and type the name of the organism and/or gene: Gracilaria 18S rRNA
> -   Choose DNA
> -	In the results: 
>> o	Make sure you choose Gracilaria 
>> o	Avoid "partial sequence" 
>> o	Look for: "complete sequence"
> -	Open a WORD document.
> -	Choose 6-8 results. 
> -	Enter each result and press FASTA [gracilaria_seq.md](https://github.com/noga-ba/Noga-Mano_Lab_notebook/blob/0bc75c9e61229e85b05f6dd92a42b5e39867acd5/gracilaria_seq.md)
> - Select sequences containing minimal ambiguous bases (Ns) within the target gene region.

<<<<<<< Updated upstream
![FASTA sequence containing ambiguous bases](images/withnnnn.jpg)
=======
![FASTA sequence containing ambiguous bases (multi Ns)](images/withnnnn.jpg)
>>>>>>> Stashed changes

> - Copy and paste the sequence, including its header, to the document. 

![FASTA sequence without ambiguous bases](images/complete.jpg)


#### **2.	Performing multiple sequence alignment (ClustalW in MEGA)**
> -	Open MEGA
> -	Choose 'Align'  Edit/Build Alignment  Create a New Alignment
> -	Copy each sequence, including its title, from the Word document
> -	Choose Alignment Align by ClustalW

![Alignment of multiple sequences](images/allignment.jpg)


#### **3.	Identifying conserved regions across species**
> -	Look at the uniformity / differences between the sequences: choose a representative complete sequence, with a conserved region (~1000 bp) without gaps, yet variable to allow discrimination between species.

#### **4.	Sequence extract for primer design**
> -	Open Primer3web - https://primer3.ut.ee/
> -	From the word document, copy a sequence of ~1000 bases from the result that you chose, and paste it into the window (figure #XXX).
> -	Press "Pick Primers" - you get the output of the primer you designed.
> -	Copy the first table and order the primer.

## photo XXX

## להעלות את הקובץ של גרצילריה
## Primer3 Output: https://primer3.ut.ee/cgi-bin/primer3/primer3web_results.cgi 
## photo 3

חסר שלב 12!!!
