library(stringr)
library(dplyr)
library(readr)
library(purrr)

options(echo=TRUE) #to print all the commands in the output file

## Script to generate barcode counts

# This script reads a FASTQ file and counts the number of times each barcode is observed. # nolint
args <- commandArgs(trailingOnly = TRUE)

#Load data
yeti_collection <- read.csv("yeti_collection.csv")
fastq_file <- args[1]
output_name <- args[2]

print(fastq_file)
print(output_name)

# Define constant flanking region and barcode sequences
constant_flanking <- "GCACCAGGAACCATATA"

# Initialize a data frame to store barcode counts
barcode_counts <- list()

pattern <- "GCACCAGGAACCATATA([ATGCN]{12})"
fastq_reads <- read_lines(fastq_file)
# Loop through FASTQ sequences

for (i in 1:length(fastq_reads)) {
  # If the reminder of reads divided by 4 is not equal to 2 then we skip to next line
  if (i %% 4 != 2){next}
  #else store the line in the file named sequence
  else{sequence <- fastq_reads[i]
  #in each seq extract the sequence that matches the pattern then used str_substitute to only extract the last 12 sequence found in the last column # nolint
  barcode_region <- stringr::str_sub(stringr::str_extract(sequence, pattern),-12,-1) # nolint
  #assign barcode region to the barcode count table, if the value in barcode counts is null then start the counter by assigning 1 to it else add +1 to whatever is there # nolint
  if (is.null(barcode_counts[[barcode_region]]))
  {
    barcode_counts[[barcode_region]] <- 1
  }
  else{barcode_counts[[barcode_region]] = barcode_counts[[barcode_region]]+1}} # nolint
}
df <- data.frame(barcode_counts)
print(df)

counts_1 <- data.frame(t(df)) #transpose and convert to a dataframe

Barcode <- rownames(counts_1)
rownames(counts_1) <- NULL
count_data <- cbind(Barcode, counts_1)

fastq_id <- gsub(".fastq.*", "", fastq_file)

colnames(count_data)[2] <- fastq_id
#str(count_data)
#print(count_data)

write.table(count_data, output_name,quote=FALSE,row.names=FALSE,col.names=TRUE)
#total count
#sum(count_data$Counts) #Approx 5M reads

#Merge the count dataframe to the yeti_collection table
