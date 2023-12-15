#' Define project related objects here.
#'
#' | Object Name      | Description                                         |
#' |:-----------------|:----------------------------------------------------|
#' | `project`        | Project name.                                       |
#' | `pkg_cran`       | CRAN packages to install on top of                  |
#' |                  | package dependencies in `DESCRIPTION`.              |
#' | `pkg_github`     | GitHub packages to install.                         |
#' | `pkg_github_ref` | GitHub branch corresponding to packages             |
#' |                  | in `pkg_github`. `if (length(pkg_github_ref) == 0)` |
#' |                  | use the `HEAD` branch.                              |
#' | `pkg_ver`        | Packages with specific version.                     |
#' | `ver`            | Version corresponding to packages in `pkg_ver`.     |
#' | `ignore`         | Items to add to `.Rbuildignore`.                    |
#' | `license`        | Options are `"mit"`, `"gpl3"`, or `NULL`            |
#'

project <- "manSASInvariance"

pkg_cran <- c(
  "lavaan",
  "haven"
)

pkg_github <- c(
  "ijapesigan/longMI"
)

pkg_github_ref <- c()

pkg_ver <- c()

ver <- c()

ignore <- "^vignettes$"

license <- "mit"

git_user <- "sigmaresearch100"
git_email <- "learn.sigmaresearch100@gmail.com"
r_email <- "r.sigmaresearch100@gmail.com"
