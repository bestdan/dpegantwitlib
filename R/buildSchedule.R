#' @name buildSchedule
#' @title buildSchedule
#' @description Build the tweet_db object
#' @importFrom crontwit validateSchedule
#' @return tweet_db
#' @export


buildSchedule <- function(){
  schedule <- data.frame(minute=numeric(), 
                         hour=numeric(), 
                         dow=numeric(), 
                         category=character(), 
                         id=character())
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 12, 
                               dow      = 1, 
                               tz       = "EST",
                               category = "dpegan_blog_posts", 
                               id       = NA))
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 12, 
                               dow      = 5, 
                               tz       = "EST",
                               category = "dpegan_blog_posts", 
                               id       = NA))
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 08, 
                               dow      = 00, 
                               tz       = "EST",
                               category = "befi_fails", 
                               id       = NA))
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 08, 
                               dow      = 02, 
                               tz       = "EST",
                               category = "betterment_posts", 
                               id       = NA))
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 08, 
                               dow      = 04, 
                               tz       = "EST",
                               category = "betterment_posts", 
                               id       = NA))
  
  schedule <- rbind(schedule, 
                    data.frame(minute   = 05, 
                               hour     = 16, 
                               dow      = 06, 
                               tz       = "EST",
                               category = "fintwit_quotes", 
                               id       = NA))
  
  validateSchedule(schedule)
  return(schedule)
  
}
