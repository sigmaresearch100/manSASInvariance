DataProcessSPSS <- function() {
  # find root directory
  root <- rprojroot::is_rstudio_project
  data_raw <- root$find_file(
    ".setup",
    "data-raw"
  )
  compressed <- root$find_file(
    ".setup",
    "data-raw",
    "data.sav.xz"
  )
  if (!file.exists(compressed)) {
    message(
      paste0(
        compressed,
        " is missing."
      )
    )
    return(NULL)
  }

  # Prepare Data

  ## Load SPSS Data into R

  system(
    paste(
      "cd",
      data_raw,
      ";",
      "xz --decompress --keep data.sav.xz"
    )
  )

  sav <- file.path(
    data_raw,
    "data.sav"
  )

  if (!require("haven")) {
    install.packages("haven")
  }

  data <- as.data.frame(
    haven::read_sav(sav)
  )
  unlink(sav)

  ## Time 1

  sas_t1 <- data[
    ,
    c(
      "t1a_sas1",
      "t1a_sas2",
      "t1a_sas3",
      "t1a_sas4",
      "t1a_sas5",
      "t1a_sas6",
      "t1a_sas7",
      "t1a_sas8",
      "t1a_sas9",
      "t1a_sas10",
      "t1a_sas11",
      "t1a_sas12",
      "t1a_sas13",
      "t1a_sas14",
      "t1a_sas15",
      "t1a_sas16",
      "t1a_sas17",
      "t1a_sas18",
      "t1a_sas19",
      "t1a_sas20",
      "t1a_sas21",
      "t1a_sas22",
      "t1a_sas23",
      "t1a_sas24",
      "t1a_sas25"
    )
  ]

  colnames(sas_t1) <- c(
    "y1_1",
    "y1_2",
    "y1_3",
    "y1_4",
    "y1_5",
    "y1_6",
    "y1_7",
    "y1_8",
    "y1_9",
    "y1_10",
    "y1_11",
    "y1_12",
    "y1_13",
    "y1_14",
    "y1_15",
    "y1_16",
    "y1_17",
    "y1_18",
    "y1_19",
    "y1_20",
    "y1_21",
    "y1_22",
    "y1_23",
    "y1_24",
    "y1_25"
  )

  ## Time 2

  sas_t2 <- data[
    ,
    c(
      "t2a_sas1",
      "t2a_sas2",
      "t2a_sas3",
      "t2a_sas4",
      "t2a_sas5",
      "t2a_sas6",
      "t2a_sas7",
      "t2a_sas8",
      "t2a_sas9",
      "t2a_sas10",
      "t2a_sas11",
      "t2a_sas12",
      "t2a_sas13",
      "t2a_sas14",
      "t2a_sas15",
      "t2a_sas16",
      "t2a_sas17",
      "t2a_sas18",
      "t2a_sas19",
      "t2a_sas20",
      "t2a_sas21",
      "t2a_sas22",
      "t2a_sas23",
      "t2a_sas24",
      "t2a_sas25"
    )
  ]

  colnames(sas_t2) <- c(
    "y2_1",
    "y2_2",
    "y2_3",
    "y2_4",
    "y2_5",
    "y2_6",
    "y2_7",
    "y2_8",
    "y2_9",
    "y2_10",
    "y2_11",
    "y2_12",
    "y2_13",
    "y2_14",
    "y2_15",
    "y2_16",
    "y2_17",
    "y2_18",
    "y2_19",
    "y2_20",
    "y2_21",
    "y2_22",
    "y2_23",
    "y2_24",
    "y2_25"
  )

  ## Time 3

  sas_t3 <- as.data.frame(
    matrix(
      data = NA,
      nrow = nrow(sas_t2),
      ncol = ncol(sas_t2)
    )
  )

  colnames(sas_t3) <- c(
    "y3_1",
    "y3_2",
    "y3_3",
    "y3_4",
    "y3_5",
    "y3_6",
    "y3_7",
    "y3_8",
    "y3_9",
    "y3_10",
    "y3_11",
    "y3_12",
    "y3_13",
    "y3_14",
    "y3_15",
    "y3_16",
    "y3_17",
    "y3_18",
    "y3_19",
    "y3_20",
    "y3_21",
    "y3_22",
    "y3_23",
    "y3_24",
    "y3_25"
  )

  ## Time 4

  sas_t4 <- data[
    ,
    c(
      "t4_sas1",
      "t4_sas2",
      "t4_sas3",
      "t4_sas4",
      "t4_sas5",
      "t4_sas6",
      "t4_sas7",
      "t4_sas8",
      "t4_sas9",
      "t4_sas10",
      "t4_sas11",
      "t4_sas12",
      "t4_sas13",
      "t4_sas14",
      "t4_sas15",
      "t4_sas16",
      "t4_sas17",
      "t4_sas18",
      "t4_sas19",
      "t4_sas20",
      "t4_sas21",
      "t4_sas22",
      "t4_sas23",
      "t4_sas24",
      "t4_sas25"
    )
  ]

  colnames(sas_t4) <- c(
    "y4_1",
    "y4_2",
    "y4_3",
    "y4_4",
    "y4_5",
    "y4_6",
    "y4_7",
    "y4_8",
    "y4_9",
    "y4_10",
    "y4_11",
    "y4_12",
    "y4_13",
    "y4_14",
    "y4_15",
    "y4_16",
    "y4_17",
    "y4_18",
    "y4_19",
    "y4_20",
    "y4_21",
    "y4_22",
    "y4_23",
    "y4_24",
    "y4_25"
  )

  ## Time 5

  sas_t5 <- data[
    ,
    c(
      "t5_sas1",
      "t5_sas2",
      "t5_sas3",
      "t5_sas4",
      "t5_sas5",
      "t5_sas6",
      "t5_sas7",
      "t5_sas8",
      "t5_sas9",
      "t5_sas10",
      "t5_sas11",
      "t5_sas12",
      "t5_sas13",
      "t5_sas14",
      "t5_sas15",
      "t5_sas16",
      "t5_sas17",
      "t5_sas18",
      "t5_sas19",
      "t5_sas20",
      "t5_sas21",
      "t5_sas22",
      "t5_sas23",
      "t5_sas24",
      "t5_sas25"
    )
  ]

  colnames(sas_t5) <- c(
    "y5_1",
    "y5_2",
    "y5_3",
    "y5_4",
    "y5_5",
    "y5_6",
    "y5_7",
    "y5_8",
    "y5_9",
    "y5_10",
    "y5_11",
    "y5_12",
    "y5_13",
    "y5_14",
    "y5_15",
    "y5_16",
    "y5_17",
    "y5_18",
    "y5_19",
    "y5_20",
    "y5_21",
    "y5_22",
    "y5_23",
    "y5_24",
    "y5_25"
  )

  ## Time 6

  sas_t6 <- as.data.frame(
    matrix(
      data = NA,
      nrow = nrow(sas_t2),
      ncol = ncol(sas_t2)
    )
  )

  colnames(sas_t6) <- c(
    "y6_1",
    "y6_2",
    "y6_3",
    "y6_4",
    "y6_5",
    "y6_6",
    "y6_7",
    "y6_8",
    "y6_9",
    "y6_10",
    "y6_11",
    "y6_12",
    "y6_13",
    "y6_14",
    "y6_15",
    "y6_16",
    "y6_17",
    "y6_18",
    "y6_19",
    "y6_20",
    "y6_21",
    "y6_22",
    "y6_23",
    "y6_24",
    "y6_25"
  )

  sas_t6$y6_1 <- unname(data[, "t6_sas1"])
  sas_t6$y6_2 <- unname(data[, "t6_sas2"])
  sas_t6$y6_3 <- unname(data[, "t6_sas3"])
  sas_t6$y6_4 <- unname(data[, "t6_sas4"])
  sas_t6$y6_5 <- unname(data[, "t6_sas5"])
  sas_t6$y6_16 <- unname(data[, "t6_sas16"])
  sas_t6$y6_17 <- unname(data[, "t6_sas17"])
  sas_t6$y6_18 <- unname(data[, "t6_sas18"])
  sas_t6$y6_19 <- unname(data[, "t6_sas19"])
  sas_t6$y6_20 <- unname(data[, "t6_sas20"])

  ## Time 7

  sas_t7 <- as.data.frame(
    matrix(
      data = NA,
      nrow = nrow(sas_t2),
      ncol = ncol(sas_t2)
    )
  )

  colnames(sas_t7) <- c(
    "y7_1",
    "y7_2",
    "y7_3",
    "y7_4",
    "y7_5",
    "y7_6",
    "y7_7",
    "y7_8",
    "y7_9",
    "y7_10",
    "y7_11",
    "y7_12",
    "y7_13",
    "y7_14",
    "y7_15",
    "y7_16",
    "y7_17",
    "y7_18",
    "y7_19",
    "y7_20",
    "y7_21",
    "y7_22",
    "y7_23",
    "y7_24",
    "y7_25"
  )

  sas_t7$y7_1 <- unname(data[, "t7sas1"])
  sas_t7$y7_2 <- unname(data[, "t7sas2"])
  sas_t7$y7_3 <- unname(data[, "t7sas3"])
  sas_t7$y7_4 <- unname(data[, "t7sas4"])
  sas_t7$y7_5 <- unname(data[, "t7sas5"])
  sas_t7$y7_6 <- unname(data[, "t7sas6"])
  sas_t7$y7_7 <- unname(data[, "t7sas7"])
  sas_t7$y7_8 <- unname(data[, "t7sas8"])
  sas_t7$y7_9 <- unname(data[, "t7sas9"])
  sas_t7$y7_10 <- unname(data[, "t7sas10"])
  sas_t7$y7_11 <- unname(data[, "t7sas11"])
  sas_t7$y7_12 <- unname(data[, "t7sas12"])
  sas_t7$y7_13 <- unname(data[, "t7sas13"])
  sas_t7$y7_14 <- unname(data[, "t7sas14"])
  sas_t7$y7_15 <- unname(data[, "t7sas15"])
  sas_t7$y7_16 <- unname(data[, "t7sas16"])
  sas_t7$y7_17 <- unname(data[, "t7sas17"])
  sas_t7$y7_18 <- unname(data[, "t7sas18"])
  sas_t7$y7_19 <- unname(data[, "t7sas19"])
  sas_t7$y7_20 <- unname(data[, "t7sas20"])

  ## Time 8

  sas_t8 <- as.data.frame(
    matrix(
      data = NA,
      nrow = nrow(sas_t2),
      ncol = ncol(sas_t2)
    )
  )

  colnames(sas_t8) <- c(
    "y8_1",
    "y8_2",
    "y8_3",
    "y8_4",
    "y8_5",
    "y8_6",
    "y8_7",
    "y8_8",
    "y8_9",
    "y8_10",
    "y8_11",
    "y8_12",
    "y8_13",
    "y8_14",
    "y8_15",
    "y8_16",
    "y8_17",
    "y8_18",
    "y8_19",
    "y8_20",
    "y8_21",
    "y8_22",
    "y8_23",
    "y8_24",
    "y8_25"
  )

  sas_t8$y8_16 <- unname(data[, "t8sas16"])
  sas_t8$y8_17 <- unname(data[, "t8sas17"])
  sas_t8$y8_18 <- unname(data[, "t8sas18"])
  sas_t8$y8_19 <- unname(data[, "t8sas19"])
  sas_t8$y8_20 <- unname(data[, "t8sas20"])

  ## Time 9

  sas_t9 <- as.data.frame(
    matrix(
      data = NA,
      nrow = nrow(sas_t2),
      ncol = ncol(sas_t2)
    )
  )

  colnames(sas_t9) <- c(
    "y9_1",
    "y9_2",
    "y9_3",
    "y9_4",
    "y9_5",
    "y9_6",
    "y9_7",
    "y9_8",
    "y9_9",
    "y9_10",
    "y9_11",
    "y9_12",
    "y9_13",
    "y9_14",
    "y9_15",
    "y9_16",
    "y9_17",
    "y9_18",
    "y9_19",
    "y9_20",
    "y9_21",
    "y9_22",
    "y9_23",
    "y9_24",
    "y9_25"
  )

  sas_t9$y9_1 <- unname(data[, "t9sas1"])
  sas_t9$y9_2 <- unname(data[, "t9sas2"])
  sas_t9$y9_3 <- unname(data[, "t9sas3"])
  sas_t9$y9_4 <- unname(data[, "t9sas4"])
  sas_t9$y9_5 <- unname(data[, "t9sas5"])

  ## Wide

  data_wide <- cbind(
    sas_t1,
    sas_t2,
    sas_t3,
    sas_t4,
    sas_t5,
    sas_t6,
    sas_t7,
    sas_t8,
    sas_t9
  )

  data_wide$y1_19 <- 6 - data_wide$y1_19
  data_wide$y2_19 <- 6 - data_wide$y2_19
  data_wide$y3_19 <- 6 - data_wide$y3_19
  data_wide$y4_19 <- 6 - data_wide$y4_19
  data_wide$y5_19 <- 6 - data_wide$y5_19
  data_wide$y6_19 <- 6 - data_wide$y6_19
  data_wide$y7_19 <- 6 - data_wide$y7_19
  data_wide$y8_19 <- 6 - data_wide$y8_19
  data_wide$y9_19 <- 6 - data_wide$y9_19

  data_wide$y1_24 <- 6 - data_wide$y1_24
  data_wide$y2_24 <- 6 - data_wide$y2_24
  data_wide$y3_24 <- 6 - data_wide$y3_24
  data_wide$y4_24 <- 6 - data_wide$y4_24
  data_wide$y5_24 <- 6 - data_wide$y5_24
  data_wide$y6_24 <- 6 - data_wide$y6_24
  data_wide$y7_24 <- 6 - data_wide$y7_24
  data_wide$y8_24 <- 6 - data_wide$y8_24
  data_wide$y9_24 <- 6 - data_wide$y9_24

  summary(data_wide)

  ## Long

  sas <- c(
    "s01",
    "s02",
    "s03",
    "s04",
    "s05",
    "s06",
    "s07",
    "s08",
    "s09",
    "s10",
    "s11",
    "s12",
    "s13",
    "s14",
    "s15",
    "s16",
    "s17",
    "s18",
    "s19",
    "s20",
    "s21",
    "s22",
    "s23",
    "s24",
    "s25"
  )

  colnames(sas_t1) <- sas
  colnames(sas_t2) <- sas
  colnames(sas_t3) <- sas
  colnames(sas_t4) <- sas
  colnames(sas_t5) <- sas
  colnames(sas_t6) <- sas
  colnames(sas_t7) <- sas
  colnames(sas_t8) <- sas
  colnames(sas_t9) <- sas

  sas_t1 <- cbind(
    time = 1,
    sas_t1
  )
  sas_t2 <- cbind(
    time = 2,
    sas_t2
  )
  sas_t3 <- cbind(
    time = 3,
    sas_t3
  )
  sas_t4 <- cbind(
    time = 4,
    sas_t4
  )
  sas_t5 <- cbind(
    time = 5,
    sas_t5
  )
  sas_t6 <- cbind(
    time = 6,
    sas_t6
  )
  sas_t7 <- cbind(
    time = 7,
    sas_t7
  )
  sas_t8 <- cbind(
    time = 8,
    sas_t8
  )
  sas_t9 <- cbind(
    time = 9,
    sas_t9
  )

  data_long <- rbind(
    sas_t1,
    sas_t2,
    sas_t3,
    sas_t4,
    sas_t5,
    sas_t6,
    sas_t7,
    sas_t8,
    sas_t9
  )

  data_long$s19 <- 6 - data_long$s19
  data_long$s24 <- 6 - data_long$s24

  summary(data_long)

  ## Save Data

  write.csv(
    x = data_wide,
    file = file.path(data_raw, "data_wide.csv"),
    row.names = FALSE
  )

  write.csv(
    x = data_long,
    file = file.path(data_raw, "data_long.csv"),
    row.names = FALSE
  )

  # Data for Mplus

  data_wide[is.na(data_wide)] <- -999
  data_long[is.na(data_long)] <- -999

  write.table(
    x = data_wide,
    file = file.path(data_raw, "data_wide_noheader.csv"),
    sep = ",",
    row.names = FALSE,
    col.names = FALSE
  )

  write.table(
    x = data_long,
    file = file.path(data_raw, "data_long_noheader.csv"),
    sep = ",",
    row.names = FALSE,
    col.names = FALSE
  )
  return(NULL)
}
DataProcessSPSS()
rm(DataProcessSPSS)
