---
layout: post
title: "Macroalgae Photophysiology Field Excersize Report"
date: 2026-06-29
---

Submitted by: Noga Mano | M.Sc student | Research Methods B

### Background
The current study was carried out as part of a research methods course held at the University of Haifa.

### Aims
In this study, we aimed to: 
1. Examine the photophysiological adaptations of a variety of macroalgal species, inhabiting the abrasion platforms near the Sdot Yam coast. 
2. Analyze the data, using R.
3. Determine the strengths and/or limitations of the method used.
4. Learn how to make a detailed report.

### Experiment Design

The study employed a multi-factorial, comparative experimental design aimed at evaluating the influence of micro-niche variations on the photophysiology of various macroalgae species. The design was structured around three primary exploratory axes: a. Habitat Niche (Environmental Factor): Specimens were collected from two distinct tidal zones on the Sdot Yam abrasion platforms:The Rock Surface: A high-exposure habitat characterized by an aspect fully open to direct, unshaded natural sunlight.The Rock Pool: A structurally complex habitat situated at a depth of approximately 1 m, where its three-dimensional topography established micro-niches (the pool floor and internal walls with varying orientations).Taxonomic Diversity: The sampling matrix incorporated multiple algal species across different families to explore inter-specific variations in physiological plasticity.Laboratory Processing State (Treatment Factor): To evaluate physiological responses and manage laboratory constraints, specimens were divided into two experimental groups:An Acclimatized Group: Plates containing arranged specimens that underwent immediate measurement.A Non-Acclimatized Group: Plates maintained in temporary darkness inside a drawer to shield them from ambient laboratory light while the first group was actively being profiled.The primary response variables consisted of chlorophyll a fluorescence parameters ($F_v/F_m$, $ETR_{max}$, $NPQ_{max}$, and $NPQ_{auc}$) extracted via PAM fluorometry.




### Materials & Methods

#### Study Site and Field Sampling

Specimens were collected on April 16th, 2026, from the abrasion platforms at Sdot Yam (Israel), the eastern Mediterranean Sea, intertidal zone. Coordinates: X:189637, Y:710976. 

Figure 1: Study site
<img width="4218" height="1663" alt="study_site" src="https://github.com/user-attachments/assets/8f22b240-b9b1-4f98-b4f9-8ec01612eea1" />


The specimens collected manually by the course students, from two general niches, that differ mainly by their exposure to sunlight:

A). The abrasion platforms surface: algae fully exposed to natural, unshaded sunlight (upward exposure), terms as "Acclimated".

Figure 2: Abrasion platforms, Sdot Yam
<img width="4608" height="3456" alt="abrasion_platform_view" src="https://github.com/user-attachments/assets/34a699c3-1429-4342-84e4-e9120914bea5" />


B). A deep rock pool of approximately 1 m depth, within the abrasion platforms. Its three-dimensional topography creates distinct micro-niches: the pool floor and internal walls with varying orientations towards sunlight, terms as "Non-Acclimated"

Figure 3: The rock pool
<img width="4608" height="3456" alt="pool" src="https://github.com/user-attachments/assets/91ad918d-3638-462e-9314-64ea3e759fef" />

#### Species Identification 

Macroalgae were identified using "Field Identification Boards" and personal previous knowledge.

Figure 4: Field Identification Boards
<img width="2191" height="2899" alt="macroalgae" src="https://github.com/user-attachments/assets/0543ab27-dd0b-4e73-9f66-ac077c9a8e47" />



Following collection, the specimens were put in individual plastic bags and and were immediately placed in an opaque container, then brought to the laboratory for photophysiological analysis. 

#### Sample Preparation for Laboratory Analysis

Upon arrival at the laboratory, the lights turned off, and the specimens were removed from the sampling bags and arranged on two separate glass Petri dishes: Acclimated and Non-acclimated.
Each dish was divided into distinct squares, with a different algal species allocated to each square.
Digital images of the dishes were captured. While the acclimated dish was undergoing measurement, the non-acclimated dish was maintained in a dark drawer. 

Figure 5: Specimens set on the dishes
<img width="3312" height="1610" alt="specimens_plates" src="https://github.com/user-attachments/assets/5394c828-1319-4166-88e2-2e5b7030ad2d" />
##### Specimens were set on two different petri-dishes. *a* Acclimated; *b* Non-acclimated.


#### Photophysiological Measurements
Chlorophyll a fluorescence measurements were performed using a Pulse Amplitude Modulation (PAM) fluorometer. The system selectively monitors fluorescence yield by emitting a low-intensity, modulated measuring light beam that detects fluorescence without inducing active photosynthetic electron transport. To determine the quantum efficiency of Photosystem II ($F_v/F_m$), the specimens from each treatment were exposed to the measuring light to establish minimum fluorescence ($F_0$), immediately followed by a short, high-intensity saturating pulse to transiently close all open reaction centers and record maximum fluorescence ($F_m$). During subsequent kinetic analysis, continuous actinic light was applied to drive active photosynthesis, while periodic saturating pulses were superimposed to calculate electron transport rates ($ETR$) and non-photochemical quenching ($NPQ$).

#### Data Processing and Statistical Analysis

The datasets generated by the PAM fluorometer were analyzed to calculate the following photophysiological parameters:

1. ***Fv/Fm***

*Description:* Maximum quantum yield of PSII photochemistry (the potential health of the system at rest = dark). *Units:* Dimensionless / Ratio.

Formula: 

<img width="135" height="40" alt="fvoverfm" src="https://github.com/user-attachments/assets/3b3f756a-cb18-471a-aba6-4a779df35c0b" />

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

Data processing, statistical analysis, and visualization were performed using **R software**, utilizing a specialized suite of packages to streamline the data pipeline:

**dplyr**: Employed for data manipulation and transformation, enabling efficient filtering, subsetting, variable mutation, and calculation of summary statistics (e.g., mean and standard error) across distinct species and habitats.

**tidyr**: Utilized for data tidying and reshaping, ensuring the dataset was properly structured (e.g., converting between wide and long formats) for downstream analysis and modeling.

**lubridate**: Applied to parse, manipulate, and standardize date formats within the experimental metadata.

**hms**: Used to manage and format time-of-day data (hours, minutes, seconds), ensuring precise alignment and tracking of measurement intervals.

**purrr**: Facilitated functional programming and iterative operations, allowing automated functions and statistical tests to be applied seamlessly across multiple subsets of the data (e.g., iterating across different algal families).

**broom**: Used to turn messy outputs of statistical models (such as regressions or variance analyses) into clean, structured data frames (tibbles) suitable for reporting and visualization.

**ggplot2**: Employed to construct high-resolution, publication-ready graphical representations of the photophysiological parameters.

**patchwork**: Utilized to combine and arrange multiple individual plots into cohesive, multi-panel composite figures with synchronized alignment.

### Results

### Discussion

