#!/bin/bash
#SBATCH --partition=normal
#SBATCH --time=150:00:00
#SBATCH --mem=16G
#SBATCH --cpus-per-task=8
#SBATCH --output=/network/lustre/iss01/home/zoe.brusselle/out/create_folders_local_parfor_%A_%a.txt
#SBATCH --error=/network/lustre/iss01/home/zoe.brusselle/out/create_folders_local_parfor_%A_%a.txt
#SBATCH --job-name=run_modele_parfor
#SBATCH --array=9,14,20,22,24,25,28,30,32,33,34
 
 
echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
 
module load MATLAB

date
echo -e "\e[34m--- Run analysis ---\e[0m"

echo "matlab -nodesktop -softwareopengl -nosplash -nodisplay < /network/lustre/iss01/home/zoe.brusselle/calc_best_param_model_parfor.m"

matlab -nodesktop -softwareopengl -nosplash -nodisplay < /network/lustre/iss01/home/zoe.brusselle/calc_best_param_model_parfor.m

date
echo -e "\e[34m--- Analysis completed ---\e[0m"
