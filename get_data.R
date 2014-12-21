# R Script get_data.R

#function to get the data, unpack it and copy all required files into a folder "data"
getdata <- function () {
  
  f="getdata-projectfiles-UCI HAR Dataset.zip"
  fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile=f)
  message ("Zip file downloaded")
  unzip(f)
  message ("Zip file unpacked")
  
  # copy in -
  # source files for run_analysis.R
  # the README and any other useful files
  
  targetdir <- getwd()
  sources <- c("UCI HAR Dataset/test", "UCI HAR Dataset/train","UCI HAR Dataset")
  for (origindir in sources){
    flist <- list.files(origindir, "*.txt", full.names = TRUE)
    file.copy(flist, targetdir)
  }                 
}
# Check for and if neccessary Create data directory

sourceDir <- getwd()
dataDir  <- "data"
if (!file.exists(dataDir)){
  dir.create(file.path(sourceDir, dataDir))
}

message ("Getting data")
setwd(dataDir)
getdata()
setwd(sourceDir)
message ("Completed")

