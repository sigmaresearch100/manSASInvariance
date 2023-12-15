DataAnalysisCompare <- function() {
  # find root directory
  root <- rprojroot::is_rstudio_project
  data_analysis <- root$find_file(
    ".setup",
    "data-analysis"
  )
  source(
    file.path(
      data_analysis,
      "data-analysis-configural.R"
    )
  )
  source(
    file.path(
      data_analysis,
      "data-analysis-weak.R"
    )
  )
  source(
    file.path(
      data_analysis,
      "data-analysis-strong.R"
    )
  )
  source(
    file.path(
      data_analysis,
      "data-analysis-strict.R"
    )
  )
  source(
    root$find_file(
      ".setup",
      "data-analysis",
      "data-analysis-arguments.R"
    )
  )
  args <- DataAnalysisArguments()
  configural <- readRDS(args$configural_fn)
  weak <- readRDS(args$weak_fn)
  strong <- readRDS(args$strong_fn)
  strict <- readRDS(args$strict_fn)
  mi <- longMI::Comparison(
    configural = configural,
    weak = weak,
    strong = strong,
    strict = strict
  )
  saveRDS(mi, file = args$mi_fn)
}
DataAnalysisCompare()
rm(DataAnalysisCompare)
