todays.date <- reactive({
  req(as.Date(input$today.override) >= lubridate::ymd("1929-01-01"))
  todays.date <- as.Date(input$today.override) %>% 
    paste("00:00:00") %>% 
    as.POSIXct() # convert to date/time object, added the 00:00:00 to ensure midnight UTC?
})
#------------------------------------------------------------------------------
observeEvent(input$today.override, {
  req(todays.date() >= lubridate::ymd("1929-01-01"))

  s.date <- todays.date() - lubridate::days(10)
  e.date <- todays.date() + lubridate::days(10)
  start.date <- as.Date(s.date)
  end.date <- as.Date(e.date)
  name <- "date.range"
  min.range <- 1
  # If end date is earlier than start date, update the end date to be the same as the new start date
  if (end.date < start.date | end.date - start.date < min.range) {
    end.date = start.date + min.range
  }
  updateDateRangeInput(session, name, start = start.date, end = end.date)
  date_frame <- function(start.date, end.date, seq.by = "day") {
    data.frame(date_time = seq.POSIXt(start.date, end.date, by = seq.by))
  #  return(data.frame)
  }
  print(s.date)
})
#print(s.date)
# #------------------------------------------------------------------------------
# observeEvent(input$date.range, {
#   date_standards(name = "date.range",
#                  session,
#                  start.date = input$date.range[1],
#                  end.date = input$date.range[2],
#                  min.range = 1)
# })
# #------------------------------------------------------------------------------
# start.date <- reactive({
#   start.date <- as.Date(input$date.range[1]) %>% 
#     paste("00:00:00") %>% 
#     as.POSIXct()
# })
# #------------------------------------------------------------------------------
# end.date <- reactive({
#   end.date <- as.Date(input$date.range[2]) %>% 
#     paste("00:00:00") %>% 
#     as.POSIXct()
# })
# #------------------------------------------------------------------------------
# 
# print(start.date)