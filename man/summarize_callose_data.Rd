% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_callose_data.R
\name{summarize_callose_data}
\alias{summarize_callose_data}
\title{Summarize Callose Data by Group}
\usage{
summarize_callose_data(
  df,
  class_col = "Predicted_Class",
  size_col = "Size_in_pixels",
  target_class = "Callose",
  group_vars = c("plant", "sample", "pic_number"),
  output_csv = NULL
)
}
\arguments{
\item{df}{A cleaned data frame output by \code{read_and_clean_csvs()}, with all objects from all Ilastik images.}

\item{class_col}{The name of the column containing predicted class labels (default is "Predicted_Class").}

\item{size_col}{The name of the column containing object size values (default is "Size_in_pixels").}

\item{target_class}{The class name to summarize (e.g., "Callose").}

\item{group_vars}{A character vector of grouping variables (e.g., \code{c("plant", "sample", "pic_number")}).}

\item{output_csv}{Optional. If specified, the full summary will be written to this file path as a .csv file.}
}
\value{
A data frame summarizing counts and mean sizes of the target class objects per group.
If \code{output_csv} is provided, the result is also written to disk.
}
\description{
This function creates summary statistics for callose detections in Ilastik output files.
It counts callose objects and computes their average size per image, while accounting
for images with zero callose objects by referencing a full image list.
}
\examples{
\dontrun{
summary_df <- summarize_callose_data(
  df = objects_with_file_names,
  target_class = "Callose",
  group_vars = c("plant", "sample", "pic_number"),
  output_csv = "summary_output.csv"
)
}

}
