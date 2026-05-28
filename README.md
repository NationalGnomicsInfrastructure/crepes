# nf-core/crepes



WE ARE THE ANCIENT STELLAR OBJECT IN THE SKY.
WE SERVE TO COUNT THE DAYS.
HOW MANY ARE WE?

OPEN ME.



[![Nextflow](https://img.shields.io/badge/nextflow%20DSL2-%E2%89%A523.04.0-23aa62.svg)](https://www.nextflow.io/)
[![run with conda](http://img.shields.io/badge/run%20with-conda-3EB049?labelColor=000000&logo=anaconda)](https://docs.conda.io/en/latest/)
[![run with docker](http://img.shields.io/bage/run%20with-docker-0db7ed?labelColor=000000&logo=docker)](https://www.docker.com/)
[![run with singularity](http://img.shields.io/badge/run%20with-singularity-1d355c.svg?labelColor=000000&logo=singularity)](https://sylabs.io/docs/)

## Introduction

**nf-core/crepes** is a bioinformatics pipeline for the analysis of pancake and waffle sequencing data.

<p align="center">
    <img src="nf-core-crepes_metro_map_grey.png" alt="nf-core-crepes metro map" width="60%">
</p>

## Pipeline summary

The pipeline performs the following steps:

1. **Import recipes** (`IMPORT_RECIPES`) - Load recipe metadata from cookbooks
2. **Mix batter** (`MIX_BATTER`) - Combine dry and wet ingredients with quality control
3. **Cook crepes** (`COOK_CREPES`) - Heat and transform batter into golden-brown crepes
4. **Plate and garnish** (`PLATE_GARNISH`) - Arrange and add toppings
5. **Taste test** (`TASTE_TEST`) - Run sensory evaluation and quality metrics

## Usage

```bash
nextflow run nf-core/crepes --input samplesheet.csv --outdir results -profile docker
```

## Credits

nf-core/crepes was originally written by MaxUlysse.
