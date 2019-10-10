#!/bin/bash
#SBATCH --partition=normal
#SBATCH --time=150:00:00
#SBATCH --mem=16G
#SBATCH --cpus-per-task=4
#SBATCH --output=/network/lustre/iss01/home/zoe.brusselle/out/create_folders_local_%A_%a.txt
#SBATCH --error=/network/lustre/iss01/home/zoe.brusselle/out/create_folders_local_%A_%a.txt
#SBATCH --job-name=run_modele
#SBATCH --array=1-5
 
 
echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
 
module load MATLAB

date
echo -e "\e[34m--- Run analysis ---\e[0m"

echo "matlab -nojvm -nodesktop -softwareopengl -nosplash -nodisplay < /network/lustre/iss01/home/zoe.brusselle/create_folders_local_${SLURM_ARRAY_TASK_ID}.m"

matlab -nojvm -nodesktop -softwareopengl -nosplash -nodisplay < /network/lustre/iss01/home/zoe.brusselle/create_folders_local_${SLURM_ARRAY_TASK_ID}.m

date
echo -e "\e[34m--- Analysis completed ---\e[0m"
