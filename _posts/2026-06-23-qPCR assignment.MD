## **qPCR Data Analysis Protocol**

##### submitted by: Noga Mano, 23/06/2026

### Preliminary Step: Experimental Setup & Gene Selection
#### **Define Genes:** 
Define your target gene(s) of interest and a stable internal reference (housekeeping) gene:
> Reference (housekeeping) gene: a stable gene which the known stress/factor we chose to check will not effect it.
> Target gene: a gene that we expect to react upon known stress/factor we chose.

#### **Experimental Design:** 
Design and conduct a controlled experiment consisting of:
> Experimental/Treatment Group: Exposed to the specific environmental stress condition being tested.
> Control Group: Keet under unstressed conditions.

#### **Quantification:**
Perform quantitative PCR (qPCR) to obtain raw cycle threshold ($C_T$) values for all samples.

##### Arrange the result of the qPCR in table:
### **Table 1: Cycle Threshold (Ct)**

| Treatment | *Tubulin*<sup>1</sup> | *ascs* | *Delta* | *ets* | *foxA* | *gcm* | *NGN* | *opt* | *pak3* | *pak4* | *pitx* | *SM30* | *sm50* | *soxC* | *synB* |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **DMSO Control** | 23.30 | 29.09 | 25.96 | 24.72 | 24.37 | 28.35 | 28.35 | 31.02 | 25.41 | 25.57 | 29.68 | 20.97 | 23.70 | 25.07 | 24.13 |
| **Inhibtior treartment** | 23.30 | 28.51 | 25.54 | 24.44 | 23.72 | 28.18 | 27.35 | 31.71 | 25.29 | 25.25 | 31.72 | 21.77 | 24.81 | 24.33 | 24.06 |


<sup>1</sup> Refernce gene

##### **Step 1: Internal Data Normalization ($\Delta C_T$)**
**Normalize the target gene expression against the internal reference gene to account for variations in initial cDNA template concentration.**

Calculated Parameter: $\Delta C_T$ (Delta $C_T$)

*Formula:*

$$\Delta C_T = C_{T, \text{target}} - C_{T, \text{reference}}$$

Example:

***Tubulin*** DMSO Control = 23.30

***ascs*** DMSO Control = 29.09

DMSO Control (Δ𝐶𝑡) = 29.09 - 23.30 = **5.798**

***Tubulin*** Inhibtior treatment = 23.30 (the right reference gene - no change under stress treatment)

***ascs*** Inhibtior treatment = 28.51 (a clear difference between control and stress treatment)

Inhibtior treatment (Δ𝐶𝑡) = 28.51 - 23.30 = **5.213**

As shown in the table 2:

### **Table 2: ΔCt calculation**

| Treatment | *ascs* | *Delta* | *ets* | *foxA* | *gcm* | *NGN* | *opt* | *pak3* | *pak4* | *pitx* | *SM30* | *sm50* | *soxC* | *synB* |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **DMSO Control ($\Delta C_T$)** | 5.798 | 2.668 | 1.421 | 1.070 | 5.059 | 5.056 | 7.725 | 2.110 | 2.276 | 6.383 | -2.327 | 0.405 | 1.777 | 0.831 |
| **Inhibtior treatment ($\Delta C_T$)** | 5.213 | 2.242 | 1.142 | 0.427 | 4.883 | 4.057 | 8.413 | 1.999 | 1.957 | 8.429 | -1.529 | 1.515 | 1.032 | 0.764 |

##### **Step 2: Normalization to the Control Group ($\Delta\Delta C_T$)**
**Calculate the relative change of the target gene within the stress treatment group compared to its baseline expression in the control group.**

Calculated Parameter: $\Delta\Delta C_T$ (Delta-Delta $C_T$)

*Formula:*

$$\Delta\Delta C_T = \Delta C_{T, \text{experimental}} - \Delta C_{T, \text{control}}$$

Note: Typically, the average $\Delta C_T$ of the control group is subtracted from each individual sample's $\Delta C_T$.

Example 

***ascs*** gene:

DMSO Control (Δ𝐶𝑡) = 5.798 

Inhibtior treartment (Δ𝐶𝑡) = 5.213 

ΔΔ𝐶𝑡 = 5.213 - 5.798 = **-0.585**

As shown in table 3:

### **Table 3: ΔΔCt calculation**

| Parameter | *ascs* | *Delta* | *ets* | *foxA* | *gcm* | *NGN* | *opt* | *pak3* | *pak4* | *pitx* | *SM30* | *sm50* | *soxC* | *synB* |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **$\Delta\Delta C_T$** | -0.585 | -0.426 | -0.279 | -0.643 | -0.176 | -0.998 | 0.688 | -0.111 | -0.319 | 2.046 | 0.798 | 1.111 | -0.744 | -0.067 |

##### **Step 3: Calculation of Relative Expression = Fold Change**
**Convert the logarithmic $\Delta\Delta C_T$ value into a linear value representing the exponential amplification of the PCR process.**

Calculated Parameter: Fold Change (Relative mRNA Expression)

*Formula:*

$$\text{Fold Change} = 2^{-\Delta\Delta C_T}$$

Example 

***ascs*** gene fold change:

**$\Delta\Delta C_T$** = -0.585

Fold change = 2^(-0.585) = **1.50**

As shown in table 4:

### **Table 3: Fold change calculation**

| Parameter | *ascs* | *Delta* | *ets* | *foxA* | *gcm* | *NGN* | *opt* | *pak3* | *pak4* | *pitx* | *SM30* | *sm50* | *soxC* | *synB* |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Fold change** | 1.50 | 1.34 | 1.21 | 1.56 | 1.13 | 2.00 | 0.62 | 1.08 | 1.25 | 0.24 | 0.58 | 0.46 | 1.68 | 1.05 |

##### **Step 4: Data Visualization and Biological Interpretation**
**Generate a graphical representation (e.g., a bar chart) displaying gene expression levels under the tested stress condition.
(X-axis: Experimental Groups [targeted genes]; Y-axis: Fold Change).**

### **Graph 1: Fold change results**

![Fold change results](../images/foldchangeqPCRpost.png)

Looking at the bar chart, you can see which genes were upregulated / downregulated: 

Fold change > 1 : **gene expression increased** (upregulated) under stress compared to the control

Fold change < 1 : **gene expression decreased** (downregulated) under stress compared to the control.



