#working.data.dir <- file.path("data")
#print(working.data.dir)
#  reactive({file.path("data", input$data.dir)})
#------------------------------------------------------------------------------
na.replace <- c("", " ", "Eqp", "#N/A", "-999999")
#------------------------------------------------------------------------------
#daily.df <- reactive({
  daily.df <- file.path("data/infows/jrr_inflows_mgd.csv") %>%
    data.table::fread(data.table = FALSE,
                      na.strings = na.replace) %>%
   # dplyr::filter(!is.na(site)) %>%
  #  dplyr::mutate(date_time = as.POSIXct(date_time),
   #               date_time = lubridate::ymd(date_time))
 # return(daily.df)

  
#})
print(daily.df)
#----------------------------------------------------------------------------
