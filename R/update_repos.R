
# Nightly rebuild
if(!require(devtools)){
  install.packages("devtools")
}

devtools::install_github("bestdan/crontwit")
devtools::install_github("bestdan/dpegantwitlib")

