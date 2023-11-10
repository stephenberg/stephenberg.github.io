#!/bin/bash 
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1 
#SBATCH --mem=1GB 
#SBATCH --time=1:00:00 	
#SBATCH --account=muh10
#SBATCH --partition=sla-prio

#SBATCH --array=1-400%10


module load r/4.2.2
R CMD BATCH test.R test_$SLURM_ARRAY_TASK_ID
