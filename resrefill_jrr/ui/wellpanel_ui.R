wellPanel(
  fluidRow(
    column(width = 3,
          tags$style(type='text/css', "#large .selectize-input { line-height: 60px; }"),
          h4("Reservoir"),
          dateInput("date_resmeas", "Date:",
                    value = Sys.Date(),
                    width = "250px"),
          numericInput("val_resmeas_tl", "Total Usable Storage:",
                       0, min=0,max = 45.99 * 10^9,
                       width = "250px"),
          numericInput("val_resmeas_ws", "Water Supply Storage:",
                       0, min=0,max = 45.99 * 10^9,
                       width = "250px"),
          selectInput("units_resmeas", "Volume Units:",
                      c("Acre-ft" = "acft",
                        "MG" = "mg",
                        "BG" = "bg"),
                      width = "125px"),
#    ),
   # column(width = 2,
          h4("Inflow"),
          sliderInput("percentile", "Historical Year", 
                      min=1930, max=2013, value=1930, 
                      step=1, round=0, sep=""),
          sliderInput("percentile", "Inflow Percentile", 
                       min=0, max=100, value=5, 
                       step=1, round=0)
          # br(),
          # checkboxInput('jitter', 'Jitter'),
          # checkboxInput('smooth', 'Smooth')
    )# ),
    # column(4, offset = 1,
    #        selectInput('x', 'X', names(dataset)),
    #        selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
    #        selectInput('color', 'Color', c('None', names(dataset)))
    # ),
    # column(4,
    #        selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
    #        selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
    # )
  )
)
