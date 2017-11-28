molabel <- c("May-31", "Jun-31", "Jul-31", "Aug-31", "Sep-30", "Oct-31", "Nov-30", "Dec-31", "Jan-31", "Feb-28", "Mar-30", "Apr-30", "May-31")
motag <- c("mo05", "mo06", "mo07", "mo08", "mo09", "mo10", "mo11", "mo12", "mo13", "mo14", "mo15", "mo16", "mo17")
valtag <- c("resmeas_tl","resmeas_ws","rel_moavwq_cfs","rel_wwavf_hrs","srmatch_perc","rel_dlyavws_mgd","rel_ws_days")
sidebarPanel()
wellPanel(
  fluidRow(
  #  conditionalPanel("input.tab == 'Required' Or 'Optional'",
                    column(2,
                           h5("Current Conditions"),
                           dateInput("date_resmeas", "Date:", value = Sys.Date(), width = "100px"),
                           numericInput("val_resmeas_tl", "Total Usable Storage:", 0, min=0,max = 45.99 * 10^9, width = "100px"),
                           numericInput("val_resmeas_ws", "Water Supply Storage:", 0, min=0,max = 45.99 * 10^9, width = "100px"),
                           selectInput("units_resmeas", "Volume Units:", c("Acre-ft" = "acft", "MG" = "mg", "BG" = "bg"), width = "100px"),
                           "Inflow",
                           sliderInput("percentile", "Historical Year", min=1930, max=2013, value=1930, step=1, round=0, sep=""),
                           sliderInput("percentile", "Inflow Percentile", min=0, max=100, value=5, step=1, round=0)
                    ),

   # ),
    conditionalPanel("input.tab == 'Required'",
                     column(10,
                            h5("Release Scenario"),
                            fluidRow(
                              column(2,"Monthly Average Water Quality Release, cfs"),
                              column(2,"White Water/AVF Release, hours"),
                              column(2,"Savage Water Supply Match, percent"),
                              column(2,"Daily Average Water Supply Release, MGD"),
                              column(2,"Length of Water Supply Release, days")
                            ),
                            fluidRow(
                              column(2,"val",
                                     lapply(1:13, function(i) {
                                       numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                    0, min=0,max = 45.99 * 10^9,
                                                    width = "100%")
                                     }
                                     )
                              ),
                              column(2,"val",
                                     lapply(1:13, function(i) {
                                       numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                    0, min=0,max = 45.99 * 10^9,
                                                    width = "100%")
                                     }
                                     )
                              ),
                              column(2,"val",
                                     lapply(1:13, function(i) {
                                       numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                    0, min=0,max = 45.99 * 10^9,
                                                    width = "100%")
                                     }
                                     )
                              ),
                              column(2,"val",
                                     lapply(1:13, function(i) {
                                       numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                    0, min=0,max = 45.99 * 10^9,
                                                    width = "100%")
                                     }
                                     )
                              ),
                              column(2,"val",
                                     lapply(1:13, function(i) {
                                       numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                    0, min=0,max = 45.99 * 10^9,
                                                    width = "100%")
                                     }
                                     )
                              )
                            )
                     ) 
    ),
   conditionalPanel("input.tab == 'Optional'",
                    column(10,
                           h5("Optional Plotting Points"),
                           fluidRow(
                             column(5,"Total Storage (end of month), BG"),
                             column(5,"Total Water Supply Storage (end of month), BG")
                           ),
                           fluidRow(
                             column(5,"val",
                                    lapply(1:13, function(i) {
                                      numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                   0, min=0,max = 45.99 * 10^9,
                                                   width = "100%")
                                    }
                                    )
                             ),
                             column(5,"val",
                                    lapply(1:13, function(i) {
                                      numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
                                                   0, min=0,max = 45.99 * 10^9,
                                                   width = "100%")
                                    }
                                    )
                             )
                           )
                    )
                    
    )
  ))            