slurm_array_id <- Sys.getenv('SLURM_ARRAY_TASK_ID')
n <- as.numeric(slurm_array_id)
df=data.frame(id=n)
save(df, file=paste0("output/test_",n,".RData"))
