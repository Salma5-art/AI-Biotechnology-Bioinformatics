input_dir <- "raw_data"
output_dir <- "Results"
if(!dir.exists(output_dir)){
  dir.create(output_dir)
}

files_to_process <- c("DEGs_Data_1.csv", "DEGs_Data_2.csv")
result_list <- list()

for (file_names in files_to_process) {
  cat("\nProcessing:", file_names, "\n")
  
  input_file_path <- file.path(input_dir, "DEGs_Data_1.csv", "DEGs_Data_2.csv")
}

 Classify_gene <- function(logFC, padj)
if (logFC > 1 & padj < 0.05){
  return("upregulated")
} if (logFC < -1 & padj < 0.5){
  return ("downregulated")
 ifelse {
  return("Not_Sifnificant")
}}

files_to_process <- c("DEGs_Data_1.csv", "DEGs_Data_2.csv")
result_list <- list()

for (file_names in files_to_process)
  cat("\nProcessing:", file_names, "\n")
  
  input_file_path <- file.path(input_dir, file_names)
  str(input_file_path)
  
  data <- read.csv(input_file_path, header = TRUE)
  cat("file imported. checking for missing values...\n")
  
  if ("padj" %in%names(data)){
    missing_count <- sum(is.na(data$padj))
    
    cat("Missing values in 'padj' :", missing_count, "\n")
    data$padj[is.na(data$padj)] <- 1
  }
  
data$gene <- Classify_gene(data$logFC, data$padj)
cat("gene has been classifiees successfully.\n")

"Results"[[file_names]] <-data

output_file_path <- file.path(output_dir, paste0("gene_results", file_names))


write.csv(data, output_file_path, row.names = FALSE)
cat("Results saved to:", output_file_path, "\n")

results_1 <- result_list[[1]]
results_2 <- result_list[[2]]

write.csv (DEGs_Data_1.csv , file = "resuls_1")
save.image("my_workspace.RData")
