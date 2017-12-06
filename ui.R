#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
# sarah test

library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage(title = tags$a("", href = "http://icprbcoop.org/drupal4/self-breifing-conditions", target = "_blank",
                                  tags$span(style="color:white", "CO-OP")),
                   id = "tab",
                   inverse = TRUE, 
                   theme = shinythemes::shinytheme("spacelab"),
                   
                   source("ui/tabpanel_required_ui.R", local = TRUE)$value,
                   source("ui/tabpanel_optional_ui.R", local = TRUE)$value,
                   source("ui/tabpanel_param_ui.R", local = TRUE)$value,
                   source("ui/wellpanel_ui.R", local = TRUE)$value
                   # tags$head(tags$style(".shiny-plot-output{height:50vh !important;}"),
                   #           #tags$style(".well{height:40vh !important;}"),
                   #           tags$style(".well{margin-bottom: 0px;}"))

))

