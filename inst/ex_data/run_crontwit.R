#' @title run_crontwit.R
#' Ensure you have dependencies. 

if(!require(pacman)) install.packages("pacman", repos='http://cran.us.r-project.org')
pacman::p_load(twitteR, yaml, devtools)

if(!require(crontwit)){
  devtools::install_github("bestdan/crontwit")
  devtools::install_github("bestdan/dpegantwitlib")
}

# Nightly rebuild
if(as.numeric(format(Sys.time(), "%H")) == 1){
  devtools::install_github("bestdan/crontwit")
  devtools::install_github("bestdan/dpegantwitlib")
}

library(crontwit)
library(dpegantwitlib)

# Load paths
creds_path    <- "~/src/degan_creds.yaml"

twitter_creds <- yaml.load_file(creds_path)$twitter

# Tell it to auto-cache the credentials
options("httr_oauth_cache"=TRUE)
#getOption("httr_oauth_cache")
setup_twitter_oauth(consumer_key    = twitter_creds$consumer_key, 
                    consumer_secret = twitter_creds$consumer_secret, 
                    access_token    = twitter_creds$access_token, 
                    access_secret   = twitter_creds$access_token_secret)

# Load schedule
schedule <- dpegantwitlib::schedule
tweet_db <- dpegantwitlib::tweet_db

# Check schedule and post if necessary. 
checkScheduleAndPost(schedule, tweet_db)
