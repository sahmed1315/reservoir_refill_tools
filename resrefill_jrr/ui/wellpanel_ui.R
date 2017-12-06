molabel <- c("May-31", "Jun-31", "Jul-31", "Aug-31", "Sep-30", "Oct-31", "Nov-30", "Dec-31", "Jan-31", "Feb-28", "Mar-30", "Apr-30", "May-31")
motag <- c("mo05", "mo06", "mo07", "mo08", "mo09", "mo10", "mo11", "mo12", "mo13", "mo14", "mo15", "mo16", "mo17")
valtag <- c("resmeas_tl","resmeas_ws","rel_moavwq_cfs","rel_wwavf_hrs","srmatch_perc","rel_dlyavws_mgd","rel_ws_days")

wellPanel(
  fluidRow(
      column(2, 
            # tags$h4("Units"),
            # tags$br(
#               selectInput("unit_flw", "Flow Units:", c("CFS" = "cfs", "MGD" = "mgd"), width = "100px")
            # ),
          
          tags$h4("Current Storage"),
          tags$br(
            dateInput("today.override", 
                      paste0("Today's Date (", Sys.Date(), "):"),
                      value = Sys.Date(), min = "1929-10-01", max = Sys.Date(), format="yyyy-mm-dd",
                      width = "100px"),
            selectInput("units", "Units:", c("Acre-ft" = "acft", "BG" = "bg"), width = "100px"),
            numericInput("val_resmeas_tl", "Total Usable Storage:", 0, min=0,max = 45.99 * 10^9, width = "100px"),
            numericInput("val_resmeas_ws", "Water Supply Storage:", 0, min=0,max = 45.99 * 10^9, width = "100px")
          ),
          tags$h4("Inflow Scenario"),
          tags$br(
            sliderInput("percentile", "Historical Year", min=1930, max=2013, value=1930, step=1, round=0, sep=""),
            sliderInput("percentile", "Percentile", min=0, max=100, value=5, step=1, round=0)
          )
        ),
        conditionalPanel("input.tab == 'Required'",
                         column(9, offset = 1, 
                                tags$h4("Release Scenario"),
                                fluidRow(
                                  column(2,tags$br(tags$b("Monthly Average Water Quality Release (cfs):"))),
                                  column(2,tags$br(tags$b("White Water/AVF Release Length (hours):"))),
                                  column(2,tags$br(tags$b("Savage Water Supply Match (percent):"))),
                                  column(2,tags$br(tags$b("Daily Average Water Supply Release (cfs):"))),
                                  column(2,tags$br(tags$b("Length of Water Supply Release (days):")))
                                ),
                                fluidRow(
                                  column(2,"",
                                         lapply(1:13, function(i) {
                                           numericInput(paste0("", valtag[3], motag[i], sep="_"), molabel[i],
                                                        0, min=0,max = 45.99 * 10^9,
                                                        width = "100%")
                                         }
                                         )
                                  ),
                                  column(2,"",
                                         lapply(1:13, function(i) {
                                           numericInput(paste0("", valtag[4], motag[i], sep="_"), molabel[i],
                                                        0, min=0,max = 45.99 * 10^9,
                                                        width = "100%")
                                         }
                                         )
                                  ),
                                  column(2,"",
                                         lapply(1:13, function(i) {
                                           numericInput(paste0("", valtag[5], motag[i], sep="_"), molabel[i],
                                                        0, min=0,max = 45.99 * 10^9,
                                                        width = "100%")
                                         }
                                         )
                                  ),
                                  column(2,"",
                                         lapply(1:13, function(i) {
                                           numericInput(paste0("", valtag[6], motag[i], sep="_"), molabel[i],
                                                        0, min=0,max = 45.99 * 10^9,
                                                        width = "100%")
                                         }
                                         )
                                  ),
                                  column(2,"",
                                         lapply(1:13, function(i) {
                                           numericInput(paste0("", valtag[7], motag[i], sep="_"), molabel[i],
                                                        0, min=0,max = 45.99 * 10^9,
                                                        width = "100%")
                                         }
                                         )
                                  )
                                )
                         ) 
        ),
       conditionalPanel("input.tab == 'Optional'",
                        column(9, offset=1,
                               tags$h4('Optional Storage Values for Plotting Only (see "Units" input for Acre-ft or BG)'),
                               fluidRow(
                                 column(2,tags$br(tags$b("Total Storage (end of month):"))),
                                 column(2,tags$br(tags$b("Total Water Supply Storage (end of month):")))
                               ),
                               fluidRow(
                                 column(2,"",
                                        lapply(1:13, function(i) {
                                          numericInput(paste0("", valtag[1], motag[i], sep="_"), molabel[i],
                                                       0, min=0,max = 45.99 * 10^9,
                                                       width = "100%")
                                        }
                                        )
                                 ),
                                 column(2,"",
                                        lapply(1:13, function(i) {
                                          numericInput(paste0("", valtag[2], motag[i], sep="_"), molabel[i],
                                                       0, min=0,max = 45.99 * 10^9,
                                                       width = "100%")
                                        }
                                        )
                                 )
                               )
                        )
                        
        ),
       conditionalPanel("input.tab == 'Parameters'",
                        column(9, offset=1,
                               tags$h4("Jennings Randolph Reservoir Parameters"),
                               tags$br(),
                               fluidRow(
                                  column(2,#tags$br(tags$b("Elevations")),
                                     numericInput("param_topdam_elv", "Top of Dam (ft):", 1514, min=0,max = 1514, width = "100px"),
                                     numericInput("param_flood_elv", "Flood Pool (ft):", 1500, min=0,max = 1514, width = "100px"),
                                     numericInput("param_spill_elv", "Spillway (ft):", 1468, min=0,max = 1514, width = "100px"),
                                     numericInput("param_cons_elv", "Conservation Pool (ft):", 1466, min=0,max = 1514, width = "100px")
#                                     numericInput("param_drainage_area", "Drainage Area (square miles):", 263, min=0,max = 300, width = "100px")
#                                     numericInput("param_1inch_runoff", "One Inch of Runoff (Acre-ft)):", 14027, min=0,max = 15000, width = "100px")
                                  ),
                                  column(2,#tags$br(tags$b("Volumes")),
                                     numericInput("param_wq_vol", "Water Quality (Acre-ft):", 48885, min=0,max =  141147, width = "100px"),
                                     numericInput("param_ws_vol", "Water Supply (Acre-ft):", 39291, min=0,max = 141147, width = "100px"),
                                     numericInput("param_sed_vol", "Sediment (Acre-ft):", 0, min=0,max = 141147, width = "100px"),
                                     numericInput("param_dead_vol", "Gate Sill/Dead (Acre-ft):", 110, min=0,max = 141147, width = "100px")
                                  ),
                                  column(2,#tags$br(tags$b("Non-recreational Release Guidelines")),
                                         numericInput("param_maxrelease_cfs", "Maximum (cfs):", 9000, min=0,max = 9000, width = "100px"),
                                         numericInput("param_averelease_cfs", "Average (cfs):", 1500, min=0,max = 9000, width = "100px"),
                                         numericInput("param_minrelease_cfs", "Minimum (cfs):", 120, min=0,max = 9000, width = "100px")
                                  ),
                                  column(2,#tags$br(tags$b("Storage Ratios")),
                                     numericInput("param_wq_ratio", "Water Quality (ratio):", 0.55, min=0,max = 1, width = "100px"),
                                     numericInput("param_ws_ratio", "Water Supply (ratio):", 0.45, min=0,max = 1, width = "100px")
#                                     numericInput("bg_to_acft", "BG to Acre-ft (factor):", 3068.8878, min=3068.8878,max = 3068.8878, width = "100px"),
                                  ),
                                  column(2,#tags$br(tags$b("Recreational Targets")),
                                     numericInput("param_beach_elv", "Beach (ft):", 1455, min=0,max = 1466, width = "100px"),
                                     numericInput("param_wvboat_elv", "WV Boat Launch (ft):", 1445, min=0,max = 1466, width = "100px"),
                                     numericInput("param_mdboat_elv", "MD Boat Launch (ft):", 1420, min=0,max = 1466, width = "100px"),
                                     numericInput("param_wwcutoff_elv", "JRR White Water Release Cutoff (ft):", 1463, min=0,max = 1466, width = "100px")
                                  ),
                                  column(2,#tags$br(tags$b("Recreational Release")),
                                     numericInput("para_recrelease1_cfs", "Recreation Release Alt1 (cfs):", 300, min=0,max = 9000, width = "100px"),
                                     numericInput("para_recrelease2_cfs", "Recreation Release Alt2 (cfs):", 250, min=0,max = 9000, width = "100px"),
                                     numericInput("para_recrelease3_cfs", "Recreation Release Alt3 (cfs):", 200, min=0,max = 9000, width = "100px"),
                                     numericInput("para_recrelease4_cfs", "Recreation Release Alt4 (cfs):", 150, min=0,max = 9000, width = "100px"),
                                     numericInput("para_recrelease5_cfs", "Recreation Release Alt5 (cfs):", 100, min=0,max = 9000, width = "100px")
                                  )
                               )
                          )
                        
       )
  )
)            