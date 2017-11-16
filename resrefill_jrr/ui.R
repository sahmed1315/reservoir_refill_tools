#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(navbarPage(title = tags$a("", href = "http://icprbcoop.org/drupal4/self-breifing-conditions", target = "_blank",
                                  tags$span(style="color:white", "CO-OP")),
                   id = "tab",
                   inverse = TRUE, 
                   theme = shinythemes::shinytheme("spacelab"),
                   
                   source("ui/rr_ui.R", local = TRUE)$value,
                   source("ui/wellpanel_ui.R", local = TRUE)$value,
                   tags$head(tags$style(".shiny-plot-output{height:50vh !important;}"),
                             tags$style(".well{margin-bottom: 0px;}"))
                   
))

#default script below


# shinyUI(fluidPage(
#   
#   titlePanel("Tabsets"),
#   
#   sidebarLayout(
#     
#     sidebarPanel(
#       # Inputs excluded for brevity
#     ),
#     
#     mainPanel(
#       tabsetPanel(
#         tabPanel("Plot", plotOutput("plot")), 
#         tabPanel("Summary", verbatimTextOutput("summary")), 
#         tabPanel("Table", tableOutput("table"))
#       )
#     )
#   )
# ))
# 


# Define UI for application that draws a histogram
#shinyUI(fluidPage(
  
  # Application title
 # titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
#  sidebarLayout(
 #   sidebarPanel(
  #     sliderInput("bins",
   #                "Number of bins:",
    #               min = 1,
     #              max = 50,
      #             value = 30)
  #  ),
    
    # Show a plot of the generated distribution
#    mainPanel(
 #      plotOutput("distPlot")
#    )
#  )
#))
