#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex37
#SBATCH --output=example_37.log
#
rm -rf example_37
rm *.png
time Rscript example_37.R
zip -r pirouette_example_37.zip example_37 example_37.R scripts *.png

