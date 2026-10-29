# ERG11 Copy Number Variant Evolution in *Saccharomyces cerevisiae*

## Overview

This repository contains R code, analysis scripts, and supporting data for research investigating the experimental evolution of *ERG11* copy number variants (CNVs) in *Saccharomyces cerevisiae* under fluconazole selection.

## Repository Structure

### Main Analysis Scripts

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `Fig1_controlgrowth_heatmap.Rmd` | Fig. 1C | Analysis of control strains growth | `Control_growthcurve_output_2026Jan9.xlsx` |
| `Fig2_S2_CNVtimecourse.Rmd` | Fig. 2, S2 | CNV evolution timecourse visualization from gating data | `Apr2025_allruns.xlsx` |
| `Fig3_growthrates.Rmd` | Fig. 3, S4 | Growth rate comparison between CNV and control strains | `All_growthcurve_output_Oct1_2026.xlsx` |
|`Fig5_barcodeabundance.Rmd` | Fig. 5 | Analysing Bar-seq data | `Barcode_counts` |
|`evo_simulations.ipynb` | Fig. 7, S8 | Evolutionary simulations | none |
| `FigS3_doseresponse_analysis.Rmd` | Fig. S3 | IC50 estimation from control strain dose-response data | `All_growthcurve_output_Oct1_2026.xlsx` |

### Supplementary Visualization Scripts

The perbase.txt files used as input for some of these codes are ~250MB in size and cannot be uploaded here. They can be generated as described in the Methods section of the manuscript, from sorted BAM files using bedtools genomecov with the -d flag.

| Script | Figure(s) | Description | Input Data |
|--------|-----------|-------------|------------|
| `FigS1_genome_visualisation.Rmd` | Fig. S1 | Visualising the genomic context at the native ERG11 locus on Chr VIII and the GAP1 locus on Chr XI | `ERG11context_combined.csv` |
| `Fig4_depth_visualisation.Rmd` | Fig. 4, 6B | Genome-wide read depth visualization: ancestral strain vs. CNV strain | perbase files |
| `FigS5_perbase_comparison_allcond.Rmd` | Fig. S5, S6, S7 | Genome-wide read depth of representative strains | perbase files |

### Example and Utility Scripts

| Script | Description |
|--------|-------------|
| `growth_curves_Apr29.Rmd` | Example of raw growth data analysis using a single experimental batch | Input: `Apr29_meta.csv`, `Apr29_growth.csv` |
| `FACu_rSalvador_tests.Rmd` | Mutation rate estimation utility for FACu fluctuation assays (calculates *m* from raw mutant colonies) |
| `plotprocessing_passage.R` | Dependency for timecourse figure generation |
| `quantify_pipeline_2.R` | Extracting barcode count data from sequencing files |

## Data Files

The repository includes the following input datasets:
- `Control_growthcurve_output_2026Jan9.xlsx` — Control strain growth curve data across all temperatures
- `All_growthcurve_output_Oct1_2026.xlsx` — Growth curve data for CNV and control strains at 30C
- `All_growthcurve_output-Aug6.xlsx` — Dose-response growth curve data
- `Apr2025_allruns.xlsx` — Gating data for CNV evolution timecourse
- `Apr29_meta.csv`, `Apr29_growth.csv` — Example batch growth data
- `yeti_collection.csv` - Strain information for barcoded YETI strains

## Requirements

- **Language**: R
- All scripts are written in R/R Markdown format


---
