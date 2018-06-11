# save down file
tweet_db <- buildTweetDB()
usethis::use_data(tweet_db, overwrite = TRUE)

schedule <- buildSchedule()
usethis::use_data(schedule, overwrite = TRUE)

