# Push code to GitHub
# Run this script in RStudio or R console

setwd("/Users/jackleo/R_project/IS507_work")

cat("==========================================\n")
cat("Git Status Check\n")
cat("==========================================\n")
system("git status")

cat("\n==========================================\n")
cat("Adding files to staging area...\n")
cat("==========================================\n")
system("git add .")

cat("\n==========================================\n")
cat("Current staged files:\n")
cat("==========================================\n")
system("git status --short")

cat("\n==========================================\n")
cat("Committing changes...\n")
cat("==========================================\n")
commit_msg <- readline(prompt = "Enter commit message (or press Enter for default): ")
if (commit_msg == "") {
  commit_msg <- "Update report and code"
}
system(paste0('git commit -m "', commit_msg, '"'))

cat("\n==========================================\n")
cat("Pushing to GitHub...\n")
cat("==========================================\n")
system("git push origin main")

cat("\n==========================================\n")
cat("✅ Done! Changes pushed to GitHub\n")
cat("==========================================\n")

