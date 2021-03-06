% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rhisat2.R
\name{Rhisat2}
\alias{Rhisat2}
\title{Generate hisat2 command in R}
\usage{
Rhisat2(Fastq_file_name = "SRR1234567",
  indx_directory = "/home/zhen/hisat2_idx/hg19/genome",
  Fastq_directory = ".", Paired = F, trim_5 = NULL, trim_3 = NULL,
  parallel_num = 8, Fastq_file_end = ".fastq",
  output_name = Fastq_file_name, tune_Mismatch_MX = NULL,
  tune_Mismatch_MN = NULL)
}
\examples{
library(RbashGEO)
library(dplyr)
Coldata_new <- read.csv("./Coldata_M14new.csv")

mapply(
 function(x,y){
   Rhisat2(Fastq_file_name = x,
           Paired = y,
           parallel_num = 1,
           Fastq_directory = getwd()) \%>\% Rnohup(.,paste0(x,"_hisat2"))}, 
 Coldata_new$SRR_RUN,
 (Coldata_new$Lib == "Paired")
)

}
\seealso{
\code{\link{Check_hisat2_reports}}
}
