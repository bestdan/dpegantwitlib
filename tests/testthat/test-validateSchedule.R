
context("schedule")

test_that("schedule is ok", {
  data("schedule", envir = environment())
  validateSchedule(schedule)  
})
