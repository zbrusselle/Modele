#!/bin/bash
#SBATCH --partition=normal
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=01:00:00
#SBATCH --job-name=test_parfor
#SBATCH --chdir=/network/lustre/iss01/home/zoe.brusselle/test_max
#SBATCH --output=outputs/test_%j.out
#SBATCH --error=outputs/test_%j.out

module load MATLAB

echo -e "\e[31m--- Sans parfor ---\e[0m"

matlab -nodesktop -noopengl -nodisplay < test_for.m

echo -e "\e[32m--- Avec parfor ---\e[0m"

matlab -nodesktop -noopengl -nodisplay < test_parfor.m

