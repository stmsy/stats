svar <- function(x) {
  ## Compute a sample variance
  svar <- var(x) * (length(x) - 1) / length(x)

  svar
}

ssd <- function(x) {
  ## Compute a sample standard deviation
  ssd <- sqrt(svar(x))

  ssd
}

scov <- function(x, y) {
  ## Compute a sample covariance
  svar <- cov(x, y) * (length(x) - 1) / length(x)

  svar
}

aad <- function(x) {
  ## Compute an average absolute deviation
  aad <- mean(abs(x - mean(x)))

  aad
}

range <- function(x) {
  ## Compute a range of numerical values
  window <- range(x)
  range <- window[2] - window[1]

  range
}
