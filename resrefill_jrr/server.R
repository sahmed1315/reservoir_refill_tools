# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  #----------------------------------------------------------------------------
  # Automatically stop session once browser window is closed.
  # Appears to work but when editing the ui.R errors will beging to appear in
  # to console.
  # session$onSessionEnded(stopApp)
  #----------------------------------------------------------------------------
  #source("server/dates_server.R", local = TRUE)
  #source("server/flow_units_server.R", local = TRUE)
  #source("server/import_server.R", local = TRUE)
  #----------------------------------------------------------------------------
  # TAB 1
  # Current Conditions (cc)
  #----------------------------------------------------------------------------
  source("server/cc_server.R", local = TRUE)
  #----------------------------------------------------------------------------
  # TAB 2
  # Optional Conditions (oc)
  #----------------------------------------------------------------------------
  #source("server/oc_server.R", local = TRUE)
  #----------------------------------------------------------------------------
  # TAB 3
  # Release Scenario (rs)
  #----------------------------------------------------------------------------
  #source("server/rs_server.R", local = TRUE)
  #----------------------------------------------------------------------------
})
