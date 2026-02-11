# Lyman-break Galaxy Spectra Analysis

This project compares the target galaxy **cB58** to 100 SDSS spectra to find the closest matches. I implemented a **sliding-window search** using standardized flux values and Euclidean distance, with optional smoothing to handle noisy data. The goal was to identify spectra that align most closely with cB58’s features.

📄 **View the full report and visualizations here:** [Lyman-break Galaxy Search.pdf](Lyman-break%20Galaxy%20Search.pdf)  
*(This PDF contains alignment plots of cB58 with the top matching spectra, discussion of methods, and results.)*

### Files in this repository
- `FiltterGalaxies.R` — R script implementing the search  
- `Ranked100.csv` — output of the search (distances and shifts)  
- `GalaxiesWriteUp.Rmd` — R Markdown source for the report  
- `GalaxiesWriteUp.html` — HTML version of the report  
- `Lyman-break Galaxy Search.pdf` — compiled report with figures (click to view!)
