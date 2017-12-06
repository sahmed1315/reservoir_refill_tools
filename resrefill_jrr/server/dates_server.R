# todays.date <- reactive({
#   req(as.Date(input$today.override) >= lubridate::ymd("1800-01-01"))
#   todays.date <- as.Date(input$today.override) %>% 
#     paste("00:00:00") %>% 
#     as.POSIXct()
# })

