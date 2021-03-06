#' @name buildTweetDB
#' @title buildTweetDB
#' @description Build the tweet_db object
#' @importFrom crontwit addNewTweetToDB
#' @return tweet_db
#' @export
#' @examples
#' res <- buildTweetDB()

buildTweetDB <- function(){
  #-----
  # Betterment.com posts
  tweet_db <- addNewTweetToDB(tweet_text = "Data shows that women are better (behaved) investors.\n\n
                              https://www.betterment.com/resources/data-suggests-women-are-better-behaved-investors/",
                              category = "betterment_posts")

  tweet_db <- addNewTweetToDB(tweet_text = "Try to beat the market based on news headlines using this game:\n\n
                              https://www.betterment.com/resources/can-you-time-the-market/",
                              category = "betterment_posts",  tweet_db = tweet_db)


  #-----
  # befi fails

  tweet_db <- addNewTweetToDB(tweet_text = "'Now that I've constructed a diversified portfolio, I'll track the performance of each individual component separately.'
                              \n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "'I love this company's products/services. I'm buying the stock.'\n\n

                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "'I invest for the long term, and assess performance monthly.'\n\n
                              #BeFiFails
                              ",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "'I am way better than the average person at avoiding behavioral biases.' \n\n #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Historically, past performance has not been predictive of future performance. I expect this to continue.\n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "'I will start planning better for the future tomorrow.'\n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Last week's flood has motivated me buy flood insurance.'\n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "I'll diversify by using four funds (that track the same index).\n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "My portfolio isn't going up quick enough. I guess I should trade more.\n\n
                              #BeFiFails",
                              category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "I can't believe this for-profit service is free!\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "You can trust my advisor. He disclosed his conflicts of interest.\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "Other people may be suffer from Dunning-Kruger, but I don't.\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "He was so confident, he must be right.\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "I've lost money on so many trades, I'm due for a big win.\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

tweet_db <- addNewTweetToDB(tweet_text = "I thought my portfolio was diversified, but it's underperforming the market so I guess it's not.\n\n
                              #BeFiFails",
                            category = "befi_fails",  tweet_db = tweet_db)

  #-----
  # dpegan posts
  tweet_db <- addNewTweetToDB(tweet_text = "How thoughtful, intentional blindness can improve decisions.\n\n

                              http://www.dpegan.com/better-decisions-through-blindness/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Outsourcing self-control.\n\n

                              http://www.dpegan.com/outsourcing-self-control/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "My thoughts on getting a job doing behavioral science (economics, finance, or design).\n\n

                              http://www.dpegan.com/befi_guidance/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "My thoughts on getting a job doing behavioral science (economics, finance, or design).\n\n

                              http://www.dpegan.com/befi_guidance/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Simply prohibiting bad client behavior is unlikely to be effective. Here are some alternatives.\n\n

                              http://www.dpegan.com/prohibition-is-not-a-nudge/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text=c("Should we change the portfolio, or the investor?\n  http://www.dpegan.com/change_portfolio_or_investor/"),
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Goal based investing is great, but always keep an eye on the big picture.\n\n
                              http://www.dpegan.com/goal-based-investing-big-picture/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "The Law of Reversed Effort, when saving and investing:\n\n
                              http://www.dpegan.com/the-law-of-reversed-effort/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Visualizing the effect of time on risk and return:\n\n
                              http://www.dpegan.com/visualizing-risk-return-and-time/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "When past performance is, or isn't, predictive of the future?:\n\n
                              http://www.dpegan.com/when-is-past-performance-predictive/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "When you're investing, a little bit of confidence can be a dangerous thing:\n\n
                              http://www.dpegan.com/a-little-bit-of-confidence-is-a-dangerous-thing/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Behavioral finance is for individuals, not markets. \n\n
                              Warning: idealistic and potentially naive.:\n\n
                              http://www.dpegan.com/behavioral-finance-is-for-individuals-not-markets",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Here's my suggested behavioral design reading list, broken down by area and topic:\n\n
                              http://www.dpegan.com/behavioral-science-reading-list/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "The skill of managing luck (and algorithms):\n\n
                              http://www.dpegan.com/the-skill-of-managing-luck/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Who's designing your brokerage interface, and how do they make money?\n\n
                              http://www.dpegan.com/incentives-and-behavioral-design-brokerage-ui-edition/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "An investor without a faith is doomed.\n\n
                              http://www.dpegan.com/strategic-faith/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Making wetware and software work together:\n\n
                              http://www.dpegan.com/wetware_and_software/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "What if? Why I read science fiction:\n\n
                              http://www.dpegan.com/why-i-read-science-fiction/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "The positive (unintended) effects of progressive tax rates:\n\n
                              https://www.dpegan.com/the-positive-unintended-consequences-of-progressive-tax-rates/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Beware ideas that make you feel good:\n\n
                              https://www.dpegan.com/the-hidden-danger-in-pleasurable-ideas/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)

  tweet_db <- addNewTweetToDB(tweet_text = "Do investors know how to maximize happiness?\n\n
                                https://www.dpegan.com/do-investors-know-what-will-make-them-happy/",
                              category = "dpegan_blog_posts",  tweet_db = tweet_db)


  #-----
  # fintwit quotes
  # Killed these until I have enough that it seems like it makes sense.
  # tweet_db <- addNewTweetToDB(tweet_text = "A watched portfolio never grows. ",
  #                             category = "fintwit_quotes",  tweet_db = tweet_db)
  #
  # tweet_db <- addNewTweetToDB(tweet_text = "'No amount of alpha will save a bad retirement plan.'  -@choffstein",
  #                             category = "fintwit_quotes",  tweet_db = tweet_db)
  #
  # tweet_db <- addNewTweetToDB(tweet_text = "'The worst 10 years of any backtest are the next 10 years.'  -@michaelbatnick",
  #                             category = "fintwit_quotes",  tweet_db = tweet_db)
  #
  # tweet_db <- addNewTweetToDB(tweet_text = "'No pain, no premium.'  -@choffstein",
  #                             category = "fintwit_quotes",  tweet_db = tweet_db)

  #-----
  tweet_db$tweet_text <- paste0(tweet_db$tweet_text, "  \n #apbb")

  return(tweet_db)
}

