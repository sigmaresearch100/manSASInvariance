DataAnalysisWeak <- function() {
  # find root directory
  root <- rprojroot::is_rstudio_project
  source(
    root$find_file(
      ".setup",
      "data-analysis",
      "data-analysis-arguments.R"
    )
  )
  args <- DataAnalysisArguments()
  data <- args$data
  time_points <- args$time_points
  factor_loadings <- args$factor_loadings
  model_add_free <- args$model_add_free
  model_add_equal <- args$model_add_equal
  missing <- args$missing
  fn <- args$weak_fn
  if (!file.exists(fn)) {
    fit <- longMI::Weak(
      data = data,
      time_points = time_points,
      factor_loadings = factor_loadings,
      covariances = TRUE,
      model_add = model_add_free,
      missing = missing
    )
    saveRDS(fit, file = fn)
  }
}
DataAnalysisWeak()
rm(DataAnalysisWeak)
