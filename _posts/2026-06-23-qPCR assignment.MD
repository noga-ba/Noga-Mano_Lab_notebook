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

##### **Step 1: Internal Data Normalization ($\Delta C_T$)**
**Normalize the target gene expression against the internal reference gene to account for variations in initial cDNA template concentration.**

Calculated Parameter: $\Delta C_T$ (Delta $C_T$)

*Formula:*

$$\Delta C_T = C_{T, \text{target}} - C_{T, \text{reference}}$$

##### **Step 2: Normalization to the Control Group ($\Delta\Delta C_T$)**
**Calculate the relative change of the target gene within the stress treatment group compared to its baseline expression in the control group.**

Calculated Parameter: $\Delta\Delta C_T$ (Delta-Delta $C_T$)

*Formula:*

$$\Delta\Delta C_T = \Delta C_{T, \text{experimental}} - \Delta C_{T, \text{control}}$$

Note: Typically, the average $\Delta C_T$ of the control group is subtracted from each individual sample's $\Delta C_T$.

##### **Step 3: Calculation of Relative Expression = Fold Change**
**Convert the logarithmic $\Delta\Delta C_T$ value into a linear value representing the exponential amplification of the PCR process.**

Calculated Parameter: Fold Change (Relative mRNA Expression)

Formula:

$$\text{Fold Change} = 2^{-\Delta\Delta C_T}$$

##### **Step 4: Data Visualization and Biological Interpretation**
**Generate a graphical representation (e.g., a bar chart) displaying gene expression levels under the tested stress condition (Y-axis: Fold Change; X-axis: Experimental Groups).**

Fold Change result $> 1$: The target gene is upregulated (expression increased under stress compared to the control).

Fold Change resilt $< 1$: The target gene is downregulated (expression decreased under stress compared to the control).

