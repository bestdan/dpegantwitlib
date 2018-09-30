#' @title run_crontwit.R

#' Ensure you have dependencies.
if(!require(pacman)) install.packages("pacman", repos='http://cran.us.r-project.org')
pacman::p_load(twitteR, yaml, devtools, slackr)

if(!require(crontwit)){
  devtools::install_github("bestdan/crontwit")
}

if(!require(dpegantwitlib)){
  devtools::install_github("bestdan/dpegantwitlib")
}

library(crontwit)
library(dpegantwitlib)
#----------------

# Load paths
creds_path    <- file.path("src/degan_creds.yaml")
twitter_creds <- yaml.load_file(creds_path)$twitter
#----------------


# Tell it to auto-cache the credentials
options("httr_oauth_cache"=TRUE)
#getOption("httr_oauth_cache")
setup_twitter_oauth(consumer_key    = twitter_creds$consumer_key,
                    consumer_secret = twitter_creds$consumer_secret,
                    access_token    = twitter_creds$access_token,
                    access_secret   = twitter_creds$access_token_secret)

# Load schedule and tweet_db
schedule <- dpegantwitlib::schedule
tweet_db <- dpegantwitlib::tweet_db
#----------------



# Check schedule and post if necessary.
res <- crontwit::checkScheduleAndPost(schedule, tweet_db)
#----------------



# Send a slack notification that you ran.
bb_slack_creds <- yaml.load_file(creds_path)$bb_slack_crontwit

slackr::slackrSetup(username = bb_slack_creds$username,
                    channel= bb_slack_creds$channel,
                    incoming_webhook_url= bb_slack_creds$incoming_webhook_url,
                    api_token = bb_slack_creds$api_token)
if(is.null(res)){
  slackr::slackr_bot("I just ran. No content.")
} else {
  slackr::slackr_bot(paste:"I posted this content: ",
                     paste0(res, collapse = ", "))
}
#----------------
