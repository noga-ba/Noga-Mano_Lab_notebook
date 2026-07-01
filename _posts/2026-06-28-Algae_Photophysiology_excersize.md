---
layout: README.md
title: "Macroalgae Photophysiology Analysis Excersize - Using R"
date: 2026-06-28
---

### Project title:	
Photophysiology analysis of algae grown on Sdot Yam beach rocks, Mediterranean Sea
> The sample collection is part of the Research Methods course at the University of Haifa.
>Samples were measured using iPAM / FIRE devices at the Sdot Yam Marine Station, Israel, and analyzed as part of the course requirements (R lecture).

##### Submitted by:	
Noga Mano, 029354719, MSc student, University of Haifa
    
### Overview:
This dataset contains photophysiological measurements of chlorophyll fluorescence conducted using a PAM fluorometer. The experiment examines the response of various macroalgal taxa under two experimental treatments, using both light and dark measurement protocols.

#### Column description:

**Sample_MO:** Sample Measurement Object. A unique text-based identifier assigned to each sample/experimental unit during the PAM fluorometry run (S_1 to S_13)

**Sample:** The numeric identification of the sample within the treatment (1-13)

**Taxon:** The species/taxon of the macroalgea tested

**Treatment:** 
- **A** - Light (full light exposure; see Protocol for "Light")
- **B** - Dark (shaded pool; see Protocol for "Dark")

**Protocol:** The light condition in the source location (where on the rock-table the sample was taken from). Refers to the observed lighting condition during data collection (light vs. dark), not a growth or culturing protocol.
-  **Light** - Upword. 100% light-exposure during day-hours (from sunrise to sunset).
- **Dark** - a shaded deep pool in the rock-table. The 3d structure of the pool creates shaded area (walls and 1m deep bottom).
  
**Acclimation_State:** The targeted physiological state of photosynthetic apparatus, based on the collection location (Light = acclimated; Dark = non-acclimated).

**Parameter:** The name of the variables measured (ETRmax; Fv/Fm; NPQ_auc; NPQmax).

**Value:**	The result of each parameter measured.

####**Variables description**

1. ***Fv/Fm***

*Description:* Maximum quantum yield of PSII photochemistry (the potential health of the system at rest = dark). 
*Units:* Dimensionless / Ratio

Formula: 
$$
![$$alt text$$](image.png)
$$

*F0* - Minimum Fluorescence: Baseline fluorescence when all reaction centers are open in the dark

*Fm* - Maximum Fluorescence: Peak fluorescence achieved when a short, intense saturating light pulse temporarily closes all reaction centers

*Fv* - Variable Fluorescence: The dynamic range of fluorescence (*Fm-F0*)

2. **ETRmax**

*Description:* Maximum Electron Transport Rate. The maximum speed of the system at work (Light) = the metabolic power/capacity of the algae.
*Units:* µmol electrons*m^-2*s^-1

3. **NPQmax**

*Description:* Maximum Non-Photochemical Quenching. The peak capacity of the sample to dissipate excess light energy safely as heat during the protocol.
*Units:* Dimensionless / Ratio

4. **NPQ_auc**
*Description:* Area Under the Curve of Non-Photochemical Quenching. The integrated, cumulative photoprotective energy dissipation over the course of the entire measurement protocol.
*Units:* Dimensionless / Arbitrary Units (AU) 








