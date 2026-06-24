This Readme has been generated with the help of Github's inbuilt copilot. Most code was written by Saaz Sakrikar, Akriti Agarwal, or David Gresham. Codes written with the help of LLMs have a note within them.

# ERG11 Copy Number Variant Evolution in *Saccharomyces cerevisiae*

## Overview

This repository contains R code, analysis scripts, and supporting data for research investigating the experimental evolution of *ERG11* copy number variants (CNVs) in *Saccharomyces cerevisiae* under fluconazole selection.

## Repository Structure

### Main Analysis Scripts

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `Fig3_growth_rate_comparison.Rmd` | Fig. 3 | Growth rate comparison between CNV and control strains | `All_growthcurve_output_2025Apr7.xlsx` |
| `Fig2_S2_timecourse_presentation.Rmd` | Fig. 2, Fig. S2 | CNV evolution timecourse visualization from gating data | `Apr2025_allruns.xlsx` |
| `Fig5_barcode_abundance.Rmd` | Fig. 5 | Analysing Bar-seq data | `Barcode_counts` |
| `FigS3_doseresponse_analysis.Rmd` | Fig. S3 | IC50 estimation from control strain dose-response data | `All_growthcurve_output-Aug6.xlsx` |

### Supplementary Visualization Scripts

The perbase.txt files used as input for some of these codes are ~250MB in size and cannot be uploaded here. They can be generated as described in the Methods section of the manuscript, from sorted BAM files using bedtools genomeCoverageBed.

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `Fig4_depth_visualisation.Rmd` | Fig. 4 | Genome-wide read depth visualization: ancestral strain vs. CNV strain | perbase files |
| `FigS4_perbase_comparison_allcond.Rmd` | Fig. S4 | Comparative genome-wide read depth visualization of representative ERG11 CNV strains | perbase files |
| `FigS5_perbase_comparison_FLC16GAP1.Rmd` | Fig. S5 | Comparative genome-wide read depth visualization of representative Chr XI CNV strains | perbase files |
| `FigS1_genome_visualisation.Rmd` | Fig. S1 | Visualising the genomic context at the native ERG11 locus on Chr VIII and the GAP1 locus on Chr XI | `ERG11context_combined.csv` |

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
