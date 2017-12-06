# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  #----------------------------------------------------------------------------
  # Automatically stop session once browser window is closed.
  # Appears to work but when editing the ui.R errors will beging to appear in
  # to console.
  session$onSessionEnded(stopApp)
  #----------------------------------------------------------------------------
  source("server/dates_server.R", local = TRUE) # don't think this is necessary yet
  source("server/import_server.R", local = TRUE)  
  #----------------------------------------------------------------------------
  # TAB 1
  # Required
  #----------------------------------------------------------------------------
  #source("server/required_server.R", local = TRUE)
  #----------------------------------------------------------------------------
  # TAB 2
  # Optional
  #----------------------------------------------------------------------------
  #source("server/optional_server.R", local = TRUE)
  #----------------------------------------------------------------------------
  # TAB 3
  # Parameters
  #----------------------------------------------------------------------------
  #source("server/param_server.R", local = TRUE)
  #----------------------------------------------------------------------------
})
