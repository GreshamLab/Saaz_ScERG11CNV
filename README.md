# ERG11 Copy Number Variant Evolution in *Saccharomyces cerevisiae*

## Overview

This repository contains R code, analysis scripts, and supporting data for research investigating the experimental evolution of *ERG11* copy number variants (CNVs) in *Saccharomyces cerevisiae* under fluconazole selection pressure. The repository includes reproducible analyses, visualizations, and raw datasets necessary for generating all main and supplementary figures.

## Repository Structure

### Main Analysis Scripts

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `All_outputs_analysis_2026Jan9.Rmd` | Fig. 1C | Growth curve analysis of control and ancestral strains | `Control_growthcurve_output_2026Jan9.xlsx` |
| `All_outputs_analysis_2026Mar27.Rmd` | Fig. 3 | Growth rate comparison between CNV and control strains | `All_growthcurve_output_2025Apr7.xlsx` |
| `Allruns_timecourse_presentationgraphs_6June2025.Rmd` | Fig. 2, Fig. S2 | CNV evolution timecourse visualization from gating data | `Apr2025_allruns.xlsx` |
|`Barcode_abundance_analysis_mod.Rmd | Fig. 5 | Analysing Bar-seq data | `Barcode_counts` |
| `Doseresponse_all_Aug6.Rmd` | Fig. S1 | IC50 estimation from control strain dose-response data | `All_growthcurve_output-Aug6.xlsx` |

### Supplementary Visualization Scripts

The perbase.txt files used as input for some of these codes are ~250MB in size and ccannot be uploaded here. They can be generated as described in the Methods section of the manuscript, from sorted BAM files, using the bedtools genomecov command with the -d flag. 

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `Depth_visualisation_comparison_May82025.Rmd` | Fig. 4 | Genome-wide read depth visualization: ancestral strain vs. CNV strain | perbase files |
| `perbase_groupvisualisation-allcond_selected.Rmd` | Fig. S3 | Comparative genome-wide read depth visualization of representative ERG11 CNV strains | perbase files |
| `perbase_groupvisualisation-FLC16GAP1_selected.Rmd` | Fig. S4 | Comparative genome-wide read depth visualization of representative Chr XI CNV strains | perbase files
| `Selected_genomevisualisation.Rmd` | Fig. S6 | Visualising the genomic context at the native ERG11 locus on Chr VIII and the GAP1 locus on Chr XI | `ERG11contextcombined.csv` |

### Example and Utility Scripts

| Script | Description |
|--------|-------------|
| `growth_curves_Apr29.Rmd` | Detailed example of raw growth data analysis using a single experimental batch | Input: `Apr29_meta.csv`, `Apr29_growth.csv` |
| `lea_coulson_m.R` | Mutation rate estimation utility for FACu fluctuation assays (calculates *m* from median mutant colonies) |
| `plotprocessing_passage.R` | Dependency for timecourse figure generation |

## Data Files

The repository includes the following input datasets:
- `Control_growthcurve_output_2026Jan9.xlsx` — Control strain growth curve data
- `All_growthcurve_output_2025Apr7.xlsx` — Growth curve data for CNV and control strains
- `All_growthcurve_output-Aug6.xlsx` — Dose-response growth curve data
- `Apr2025_allruns.xlsx` — Gating data for CNV evolution timecourse
- `Apr29_meta.csv`, `Apr29_growth.csv` — Example batch growth data

## Requirements

- **Language**: R
- All scripts are written in R/R Markdown format

## Usage

1. Clone the repository
2. Open the desired `.Rmd` file in RStudio or another R Markdown environment
3. Ensure required input data files are present in the working directory
4. Knit the document to generate analysis results and figures

## Citation

If you use code or data from this repository, please cite the associated publication(s) and this repository.

---

**Contact**: For questions regarding this research, please open an issue in this repository.
