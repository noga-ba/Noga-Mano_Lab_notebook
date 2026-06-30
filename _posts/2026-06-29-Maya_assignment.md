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
1. Examine the photophysiological adaptations of a variety of macroalgal species, inhabiting the abrasion platforms near the Sdot Yam offshore. 
2. Analyze the data, using R.
3. Determine the strengths and/or limitations of the method used.
4. Learn how to make a detailed report.

### Experiment Design

## 2. Experimental Design

The study employed a comparative experimental design to evaluate the effects of macro-habitat and light-regime variations on the photophysiology of various macroalgae species. The design was structured around two distinct light niches within the intertidal zone: 

1. **The surface of the abrasion platforms:** A homogeneous, high-irradiance environment characterized by full exposure to solar irradiance without any shading, representing a **chronic high-light** regime. At the time of sampling, the algae on the platform surfaces were fully submerged in ankle-deep water (Figure 2).
2. **A rock pool:** A structurally complex habitat with a depth of approximately 1 m (Figure 3), characterized by a **dynamic light regime**. In the pool, the light field is governed by topographic shading from the vertical walls (which possess varying orientations) and optical attenuation by the water column. This combination creates a patchwork of diffuse light micro-niches, resulting in a highly heterogeneous environment compared to the exposed platform surface.

The experimental treatments focused on comparing the baseline photophysiological parameters of algae collected from these two contrasting environments, with response variables subsequently evaluated in the laboratory using a Pulse Amplitude Modulation (PAM) fluorometer.

##### Methodological Note: This exercise was conducted within a training framework, the experimental design was intentionally rudimentary and unoptimized. Sampling was opportunistic and carried out by multiple student groups rather than following a strictly counterbalanced, randomized block layout. This operational constraint is evaluated in the subsequent analysis and discussion.

### Materials & Methods

#### Study Site and Field Sampling

Specimens were collected on April 16th, 2026, from the abrasion platforms at Sdot Yam (Israel), the eastern Mediterranean Sea, intertidal zone. Coordinates: X:189637, Y:710976. 

**Figure 1: Study site**

<img width="4218" height="1663" alt="study_site" src="https://github.com/user-attachments/assets/8f22b240-b9b1-4f98-b4f9-8ec01612eea1" />


The specimens collected manually by the course students, from two general niches, that differ mainly by their exposure to sunlight:

A). The abrasion platforms surface: algae fully exposed to natural, unshaded sunlight (upward exposure) - chronic high-light, terms as "Chronic".

**Figure 2: Abrasion platforms, Sdot Yam**

<img width="4608" height="3456" alt="abrasion_platform_view" src="https://github.com/user-attachments/assets/34a699c3-1429-4342-84e4-e9120914bea5" />


B). A deep rock pool of approximately 1 m depth, within the abrasion platforms. Its three-dimensional topography creates distinct micro-niches: the pool floor and internal walls with varying orientations towards sunlight, dynamic light regime, terms as "dynamic"

**Figure 3: The rock pool**

<img width="4608" height="3456" alt="pool" src="https://github.com/user-attachments/assets/91ad918d-3638-462e-9314-64ea3e759fef" />

#### Species Identification 

Macroalgae were identified using "Field Identification Boards" and personal previous knowledge.

**Figure 4: Field Identification Boards**

<img width="2191" height="2899" alt="macroalgae" src="https://github.com/user-attachments/assets/0543ab27-dd0b-4e73-9f66-ac077c9a8e47" />



Following collection, the specimens were put in individual plastic bags and and were immediately placed in an opaque container, then brought to the laboratory for photophysiological analysis. 

#### Sample Preparation for Laboratory Analysis

Upon arrival at the laboratory, the lights turned off, and the specimens were removed from the sampling bags and arranged on two separate glass Petri dishes: **"Chronic high-light"** and **"Dynamic light regime"**.
Each dish was divided into distinct squares, with a different algal species allocated to each square.
Digital images of the dishes were captured. While the "Chronic high-light" dish was undergoing measurement, the "Dynamic light regime" dish was maintained in a dark drawer. 

**Figure 5: Specimens set on the dishes**

<img width="3312" height="1610" alt="specimens_plates" src="https://github.com/user-attachments/assets/5394c828-1319-4166-88e2-2e5b7030ad2d" />
##### Specimens were set on two different petri-dishes. *a* Chronic high-light; *b* Dynamic light regime.


#### Photophysiological Measurements
Chlorophyll a fluorescence measurements were performed using a Pulse Amplitude Modulation (PAM) fluorometer. The system selectively monitors fluorescence yield by emitting a low-intensity, modulated measuring light beam that detects fluorescence without inducing active photosynthetic electron transport. To determine the quantum efficiency of Photosystem II ($F_v/F_m$), the specimens from each light regime were exposed to the measuring light to establish minimum fluorescence ($F_0$), immediately followed by a short, high-intensity saturating pulse to transiently close all open reaction centers and record maximum fluorescence ($F_m$). During subsequent kinetic analysis, continuous actinic light was applied to drive active photosynthesis, while periodic saturating pulses were superimposed to calculate electron transport rates ($ETR$) and non-photochemical quenching ($NPQ$).

#### Data Processing and Statistical Analysis

The datasets generated by the PAM fluorometer were analyzed to calculate the following photophysiological parameters:

1. ***Fv/Fm***

*Description:* Maximum quantum yield of PSII photochemistry (the potential health of the system at rest = dark). *Units:* Dimensionless / Ratio.

Formula: 

<img width="135" height="40" alt="fvoverfm" src="https://github.com/user-attachments/assets/3b3f756a-cb18-471a-aba6-4a779df35c0b" />

*F0* - Minimum Fluorescence: Baseline fluorescence when all reaction centers are open in the dark

*Fm* - Maximum Fluorescence: Peak fluorescence achieved when a short, intense saturating light pulse temporarily closes all reaction centers

*Fv* - Variable Fluorescence: The dynamic range of fluorescence (*Fm-F0*)

(Schreiber et al. 1986)

2. **ETRmax**

*Description:* Maximum Electron Transport Rate. The maximum speed of the system at work (Light) = the metabolic power/capacity of the algae.
*Units:* µmol electrons*m^-2*s^-1

(Genty et. al., 1989)

3. **NPQmax**

*Description:* Maximum Non-Photochemical Quenching. The peak capacity of the sample to dissipate excess light energy safely as heat during the protocol.
*Units:* Dimensionless / Ratio

4. **NPQ_auc**

*Description:* Area Under the Curve of Non-Photochemical Quenching. The integrated, cumulative photoprotective energy dissipation over the course of the entire measurement protocol.
*Units:* Dimensionless / Arbitrary Units (AU) 

Statistical analyses and data diagnostics were performed using R software. Prior to conducting parametric hypothesis testing, the underlying assumption of data normality was rigorously evaluated for all monitored photophysiological parameters ($F_v/F_m$, $ETR_{max}$, $NPQ_{max}$, and $NPQ_{auc}$) within each experimental group (group A - dynamic lihjt regime and group B - chronic high-light). Normality was assessed visually using normal quantile-quantile (Q-Q) plots, which map the empirical data replicates against a theoretical standard normal distribution. The close adherence of the observed data points along the linear diagonal reference lines confirmed that the datasets conformed to a normal distribution. This diagnostic step validated the prerequisite assumptions, thereby justifying the application of downstream parametric statistical tests to evaluate the physiological differences between the two tidal habitats.

 
The R packages utilized for data analysis included: 

**dplyr**: Employed for data manipulation and transformation, enabling efficient filtering, subsetting, variable mutation, and calculation of summary statistics (e.g., mean and standard error) across distinct species and habitats (developed by Wickham et al., 2023).

**tidyr**: Utilized for data tidying and reshaping, ensuring the dataset was properly structured (e.g., converting between wide and long formats) for downstream analysis and modeling.

**lubridate**: Applied to parse, manipulate, and standardize date formats within the experimental metadata.

**hms**: Used to manage and format time-of-day data (hours, minutes, seconds), ensuring precise alignment and tracking of measurement intervals.

**purrr**: Facilitated functional programming and iterative operations, allowing automated functions and statistical tests to be applied seamlessly across multiple subsets of the data (e.g., iterating across different algal families).

**broom**: Used to turn messy outputs of statistical models (such as regressions or variance analyses) into clean, structured data frames (tibbles) suitable for reporting and visualization.

**ggplot2**: Employed to construct high-resolution, publication-ready graphical representations of the photophysiological parameters (developed by Wickham, 2016).

**patchwork**: Utilized to combine and arrange multiple individual plots into cohesive, multi-panel composite figures with synchronized alignment.

### Results

Calculated data are shown in tables 1-4 below.

| Sample | Taxon | Treatment | Value |
| :--- | :--- | :--- | :--- |
| 1 | *Jania* | A | 30.4 |
| 2 | *Halopteris* | A | 6.9 |
| 3 | *Namaliun* | A | 3.9 |
| 4 | *Sargassum* | B | 29.6 |
| 5 | *Hypnea* | B | 23.5 |
| 6 | *Cudiom* | A | 9.5 |
| 7 | *Padina* | B | 42.4 |
| 8 | *Cistosera* | B | 14.9 |
| 9 | *Ulva* | A | 16.5 |
| 10 | *Galaxaura* | A | 8.8 |
| 11 | *Dictyota* | B | 28.7 |
| 12 | *Colpomenia* | B | 16.8 |
| 13 | *Ulva* | A | 17.3 |

##### **Table 1** ETRmax values for the different specimens. Treatment: A - dynamic light regime, B - chronic high-light. 



| Sample | Taxon | Treatment | Value |
| :--- | :--- | :--- | :--- |
| 1 | *Colpomenia* | A | 0.704 |
| 2 | *Dictyota* | A | 0.712 |
| 3 | *Sargassum* | A | 0.694 |
| 4 | *Padina* | B | 0.644 |
| 5 | *Jania* | B | 0.345 |
| 6 | *Red UNK* | A | 0.628 |
| 7 | *Ulva* | B | 0.404 |
| 8 | *Galxaura* | B | 0.579 |

##### **Table 2** *Fv/Fm* values for the different specimens. Treatment: A - dynamic light regime, B - chronic high-light.



| Sample | Taxon | Treatment | Value |
| :--- | :--- | :--- | :--- |
| 1 | *Colpomenia* | A | 244.28 |
| 2 | *Dictyota* | A | 216.07 |
| 3 | *Sargassum* | A | 181.35 |
| 4 | *Padina* | B | 234.98 |
| 5 | *Jania* | B | 199.95 |
| 6 | *Red UNK* | A | 209.25 |
| 7 | *Ulva* | B | 218.24 |
| 8 | *Galxaura* | B | 141.67 |

##### **Table 3** NPQ_auc values for the different specimens. Treatment: A - dynamic light regime, B - chronic high-light.



| Sample | Taxon | Treatment | Value |
| :--- | :--- | :--- | :--- |
| 1 | *Colpomenia* | A | 0.703 |
| 2 | *Dictyota* | A | 0.609 |
| 3 | *Sargassum* | A | 0.519 |
| 4 | *Padina* | B | 0.681 |
| 5 | *Jania* | B | 0.5 |
| 6 | *Red UNK* | A | 0.541 |
| 7 | *Ulva* | B | 0.648 |
| 8 | *Galxaura* | B | 0.404 |

##### **Table 4** NPQmax values for the different specimens. Treatment: A - dynamic light regime, B - chronic high-light.


To verify the prerequisites required for parametric statistical testing, normal quantile-quantile (Q-Q) plots were generated for each of the four photophysiological parameters ($F_v/F_m$, $ETR_{max}$, $NPQ_{max}$, and $NPQ_{auc}$) across both experimental groups (Treatment A - dynamic light regime, and Treatment B - chronic high-light) (figure 6). Visual inspection of the Q-Q plots revealed that the empirical data points closely aligned with the linear theoretical reference lines in all panels. No severe skewness, heavy-tailed patterns, or significant outliers were observed. Despite the small sample size inherent to this training framework, these diagnostics confirm that the dataset satisfies the assumption of normality, thereby validating the use of downstream parametric analyses (e.g., Student's t-test or ANOVA) to evaluate the physiological differences between the two tidal niches.

**Figure 7: Normal Quantile-Quantile (Q-Q) plots for photophysiological parameters**

<img width="1740" height="1050" alt="qqplot" src="https://github.com/user-attachments/assets/2f6ad66f-ec06-4386-b0e3-e0946c1f931e" />

###### $ETR_{max}$), Maximum Quantum Efficiency of Photosystem II ($F_v/F_m$), Area Under the Curve of Non-Photochemical Quenching ($NPQ_{auc}$), and Maximum Non-Photochemical Quenching ($NPQ_{max}$) across the two experimental groups (Treatment A = Red, Rock Pool; Treatment B = Cyan, Platform Surface).The horizontal axis displays the theoretical quantiles derived from a standard normal distribution (Z-scores), while the vertical axis indicates the observed values for each respective parameter. The solid diagonal lines represent the ideal normal distribution profile for each treatment. The close alignment of the empirical data points along the reference lines validates the assumption of normality required for downstream parametric statistical analyses, despite the small sample sizes.


Photophysiological profiling revealed contrasting photosynthetic strategies and stress responses between the two macroalgal habitats (Figure 7). Specimens from the rock pool (Treatment A - Dynamic light regime) exhibited significantly higher and tightly clustered $F_v/F_m$ values (median ~0.70), indicating optimized Photosystem II (PSII) efficiency and a lack of severe photoinhibitory stress due to topographic shading. Conversely, these specimens demonstrated a lower photosynthetic capacity, with a diminished maximum electron transport rate ($ETR_{max}$, median ~10).In contrast, specimens from the wave-cut platform surface (Treatment B - Chronic high-light) displayed a marked depression and high variability in $F_v/F_m$ (median ~0.50), capturing a clear signal of chronic photoinhibition induced by unshaded solar irradiance. However, these sun-exposed algae exhibited functional acclimation via a substantially higher $ETR_{max}$ (median ~26), reflecting an enhanced capacity to utilize elevated light levels. Interestingly, while median non-photochemical quenching parameters ($NPQ_{max}$ and $NPQ_{auc}$) were comparable between groups, Treatment B exhibited a much wider dispersion of data points, highlighting highly heterogeneous photoprotective responses across the exposed platform niche.

**Figure 7: The effect pf light regime on photophysiology parameters in macroalgae grown on abrasion platforms offshore Sdot Yam, eastern Mediterranean, Israel**

<img width="3786" height="2328" alt="photophysiology_boxplot" src="https://github.com/user-attachments/assets/934db649-2575-469f-8fbf-fe820b8712c7" />

###### Comparative photophysiological profiles of macroalgal specimens under contrasting light regimes. > The four panels display key photosynthetic parameters extracted via Pulse Amplitude Modulation (PAM) fluorometry (clockwize): Maximum Electron Transport Rate ($ETR_{max}$), Maximum Quantum Efficiency of Photosystem II ($F_v/F_m$), Area Under the Curve of Non-Photochemical Quenching ($NPQ_{auc}$), and Maximum Non-Photochemical Quenching ($NPQ_{max}$). Experimental groups represent distinct tidal micro-niches from the Sdot Yam abrasion platforms: Treatment A (Red) denotes specimens collected from the rock pool, characterized by a dynamic light regime with topographic shading; Treatment B (Cyan) denotes specimens collected from the wave-cut platform surface, subject to a chronic high-light regime. Horizontal bars within the boxes represent median values; the boxes outline the interquartile range (IQR, 25th to 75th percentiles); whiskers extend to 1.5 times the IQR. Jittered circles represent individual data replicates to illustrate raw data distribution. Units for $ETR_{max}$ are expressed in $\mu\text{mol\ electrons\ m}^{-2}\text{s}^{-1}$ and for $NPQ_{auc}$ in $\text{a.u.} \cdot \text{sec}$, while $F_v/F_m$ and $NPQ_{max}$ are dimensionless ratios.


### Discussion

#### Photophysiological Trade-offs: Sun vs. Shade Acclimation Strategies

The distinct photophysiological profiles observed between the two experimental groups, demonstrate a classic physiological trade-off between sun-acclimated and shade-acclimated macroalgal strategies. Specimens collected from the rock pool (dynamic light regime) exhibited characteristics of shade acclimation. Protected by a 1-meter water column and significant topographic shading, these algae maintained an optimized and highly stable maximum quantum efficiency of Photosystem II ($F_v/F_m \sim 0.70$). This indicates a structurally intact photosynthetic apparatus free from severe photoinhibitory stress. However, this optimization for low-light harvesting comes at the cost of metabolic capacity; these specimens reached light saturation rapidly and demonstrated a diminished maximum electron transport rate ($ETR_{max} \sim 10$). Conversely, specimens from the abrasion platform surface (chronic high-light), displayed a clear signature of photoinhibition, characterized by a marked depression and extensive dispersion in $F_v/F_m$ values ($median \sim 0.50$). Subject to direct, unshaded solar irradiance, these algae experience severe excitation pressure on their reaction centers. Remarkably, these sun-exposed specimens counterbalanced this structural stress through functional acclimation, achieving a substantially higher $ETR_{max}$ ($median \sim 26$). This reflects a high metabolic investment in downstream electron transport components and carbon-fixation enzymes (e.g., Rubisco), enabling them to productively utilize extreme irradiance fields despite ongoing photoinhibitory pressure.

#### Non-Photochemical Quenching and Spatial Heterogeneity

The non-photochemical quenching parameters ($NPQ_{max}$ and $NPQ_{auc}$) provide deeper insight into the photoprotective mechanisms utilized by these macroalgae. While the median NPQ values were comparable between both groups, the variance profile was highly disparate. Dynamic light regime's specimens displayed an exceptionally wide dispersion of data points compared to the tightly clustered distribution of chronic high-light's specimens. This pronounced variance in the sun-exposed habitat highlights the profound impact of micro-topographical buffering on the abrasion platform. Even within a seemingly homogeneous high-light environment, minor structural variations, such as micro-crevices, slight variations in rock aspect, or localized differences in the ankle-deep water layer, can drastically alter the actual incident irradiance experienced by individual thalli. Furthermore, because sampling was opportunistic, this variance likely captures inter-specific differences in photoprotective traits, as different macroalgae possess distinct kinetics for xanthophyll-cycle activation and thermal energy dissipation.

#### Methodological Constraints and Confounding Factors

To accurately interpret these findings, several confounding operational constraints inherent to this educational training framework must be evaluated:

1. **The Drawer Effect (Asynchronous Dark Adaptation):** Due to laboratory processing constraints, the dynamic light regime's specimens remained in temporary darkness inside a drawer while chronic high-light plate being actively measured. This unregulated period of darkness likely induced partial dark adaptation, state transitions, or chlororespiration variations between the algae. This structural inconsistency introduces a confounding variable that compromises the baseline comparison of initial fluorescence states ($F_0$ and $F_m$).

2. **Taxonomic Confounding:** The opportunistic collection of multiple, un-segregated macroalgal species across different student groups introduced significant biological noise. Macroalgae belonging to distinct phyla (Chlorophyta, Rhodophyta, and Ochrophyta) possess fundamentally different light-harvesting complex architectures, pigment compositions, and enzymatic capacities, which confounds the purely environmental signal of the habitat niches.

3. **Cryptic Diversity and Intra-specific Genetic Variation:** The reliance on visual field identification keys inherently overlooks the potential presence of cryptic species complexes and intra-specific genetic polymorphism. Many marine macroalgal taxa exhibit high morphological convergence, meaning that distinct lineages can appear anatomically identical in the field while possessing profound underlying genetic divergences. Consequently, specimens grouped together by students under the assumption of being a single species may have actually represented distinct cryptic species or localized genetic variants. These unexamined genotypic variations can dictate radically different photoprotective efficiencies and metabolic light-tolerances, introducing a substantial layer of unaccounted biological noise into the photophysiological dataset.

4. **Morphological Heterogeneity and Optical Artifacts:** While PAM fluorometry utilizes normalized fluorescence ratios (such as $F_v/F_m$) and surveys a fixed optical sensor area—making individual measurements independent of total sample biomass or weight—variations in tissue thickness and macroalgal architecture introduce distinct experimental artifacts. The opportunistic sampling strategy yielded specimens with highly diverse structural traits, ranging from thin, distromate sheets to thick, corticated, or branched thalli. In structurally thick tissues, the PAM excitation light primarily probes the outermost cortical cell layers, while deeper medullary tissues remain self-shaded, potentially decoupling the optical signal from the bulk physiological state of the organism. Furthermore, variations in tissue preparation, such as the accidental overlapping, folding, or curling of thalli within the laboratory multi-well plates, can alter the localized light absorption micro-environment and distort non-photochemical quenching ($NPQ$) kinetics. This lack of structural and morphological standardization across opportunistic replicates introduces non-environmental physical noise that complicates the clean extraction of habitat-driven physiological signals.

#### Optimized Future Experimental Re-design and Recommendations for Future Frameworks

To transition from this rudimentary survey to a rigorous, publishable experimental framework, the following methodological modifications are proposed for future investigations:

1. **Monospecific Selection:** Future studies should utilize a single ubiquitous model species, such as *Ulva lactuca*, to eliminate taxonomic variance and isolate the purely physiological plasticity driven by habitat niches. Focusing on a single species ensures true experimental replication and establishes a more robust baseline for subsequent analysis and conclusions.

2. **Standardized Dark-Adaptation Protocol:** All collected specimens must undergo an identical, tightly timed dark-adaptation period (e.g., 20 minutes) in a temperature-controlled environment, immediately upon laboratory arrival. Subsampling and PAM profiling must be executed using a strictly counterbalanced, randomized block layout to eliminate temporal measurement artifacts.

3. **Quantitative In-Situ Irradiance Profiling:** Rather than relying on qualitative habitat descriptions, future designs must deploy underwater Photosynthetically Active Radiation (PAR) sensors at the time of collection. This will provide precise, quantitative values of the local light regimes ($\mu\text{mol photons m}^{-2}\text{s}^{-1}$), allowing for robust correlation analyses between ambient irradiance and subsequent fluorometric outputs.

4. **ncorporating additional validation assays for physiological light acclimation:** Future iterations should complement fluorometric data with alternative physiological indicators, such as analyzing pigment composition and concentration (e.g., chlorophylls, phycobillins and carotenoids), assessing species richness and diversity across distinct tidal niches, and quantifying macroalgal biomass.

5. **Optimizing small-group collaboration and preparatory workflows:** Implementing a structured preparatory session prior to the field trip is highly recommended. This session should feature an introductory lecture on the intertidal habitat, and co-designed, mentored experimental planning, including standardized data management protocols (As a participant in the current framework, I felt passive and lacked the agency to actively influence the trajectory of the research design).


### References:

Genty, B., Briantais, J. M., & Baker, N. R. (1989). The relationship between the quantum yield of photosynthetic electron transport and quenching of chlorophyll fluorescence. Biochimica et Biophysica Acta (BBA)-General Subjects, 990(1), 87–92.

Schreiber, U., Schliwa, U., & Bilger, W. (1986). Continuous recording of photochemical and non-photochemical chlorophyll fluorescence quenching with a new type of modulation fluorometer. Photosynthesis Research, 10(1), 51–62.

Wickham, H. (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York.

Wickham, H., François, R., Bryan, J., & Müller, K. (2023). dplyr: A Grammar of Data Manipulation. R package version 1.1.4. https://CRAN.R-project.org/package=dplyr 
