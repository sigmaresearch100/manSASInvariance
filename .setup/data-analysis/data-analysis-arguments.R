DataAnalysisArguments <- function() {
  # find root directory
  root <- rprojroot::is_rstudio_project
  data_raw <- root$find_file(
    ".setup",
    "data-raw"
  )
  data <- read.csv(
    file.path(
      data_raw,
      "data_wide.csv"
    )
  )
  time_points <- c(1, 2, 4, 5)
  factor_loadings <- list(
    1:5,
    6:10,
    11:15,
    16:20,
    21:25
  )
  model_add_free <- "
    # 9 with 10
    y1_9 ~~ y1_10
    y2_9 ~~ y2_10
    y4_9 ~~ y4_10
    y5_9 ~~ y5_10
  "
  model_add_equal <- "
    # 9 with 10
    y1_9 ~~ u910 * y1_10
    y2_9 ~~ u910 * y2_10
    y4_9 ~~ u910 * y4_10
    y5_9 ~~ u910 * y5_10
  "
  return(
    list(
      data = data,
      time_points = time_points,
      factor_loadings = factor_loadings,
      model_add_free = model_add_free,
      model_add_equal = model_add_equal,
      missing = "fiml",
      configural_fn = file.path(data_raw, "configural.Rds"),
      weak_fn = file.path(data_raw, "weak.Rds"),
      strong_fn = file.path(data_raw, "strong.Rds"),
      strict_fn = file.path(data_raw, "strict.Rds"),
      mi_fn = file.path(data_raw, "mi.Rds")
    )
  )
}
