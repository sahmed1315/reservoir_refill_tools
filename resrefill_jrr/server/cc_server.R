# #----------------------------------------------------------------------------
# # observeEvent(input$reset.sa, {
# #   updateCheckboxGroupInput(session, "gages.sa", 
# #                            selected = c("por", "mon_jug", "lfalls",
# #                                         "lfalls_from_upstr", "lfalls_trigger"))
# # })
# # #----------------------------------------------------------------------------
# # observeEvent(input$clear.sa, {
# #   updateCheckboxGroupInput(session, "gages.sa", "Variables to show:",
# #                            c("Point of Rocks" = "por",
# #                              "Monacacy" = "mon_jug",
# #                              "Little Falls" = "lfalls",
# #                              "Little Falls (Predicted from upstream gages)" = "lfalls_from_upstr",
# #                              "Little Falls trigger for drought ops" = "lfalls_trigger"),
# #                            selected = NULL)
# # })
# #------------------------------------------------------------------------------
# output$supplier.dd.dts <- renderUI({
#   if (is.null(withdrawals.reac())) return(NULL)
#   column(10,
#          "Release Scenario for Testing",
#          fluidRow(
#            column(2,"Monthly Average Water Quality Release, cfs"),
#            column(2,"White Water/AVF Release, hours"),
#            column(2,"Savage Water Supply Match, percent"),
#            column(2,"Daily Average Water Supply Release, MGD"),
#            column(2,"Length of Water Supply Release, days")
#          ),
#          fluidRow(
#            column(2,"val",
#                   lapply(1:13, function(i) {
#                     numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
#                                  0, min=0,max = 45.99 * 10^9,
#                                  width = "100%")
#                   }
#                   )
#            ),
#            column(2,"val",
#                   lapply(1:13, function(i) {
#                     numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
#                                  0, min=0,max = 45.99 * 10^9,
#                                  width = "100%")
#                   }
#                   )
#            ),
#            column(2,"val",
#                   lapply(1:13, function(i) {
#                     numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
#                                  0, min=0,max = 45.99 * 10^9,
#                                  width = "100%")
#                   }
#                   )
#            ),
#            column(2,"val",
#                   lapply(1:13, function(i) {
#                     numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
#                                  0, min=0,max = 45.99 * 10^9,
#                                  width = "100%")
#                   }
#                   )
#            ),
#            column(2,"val",
#                   lapply(1:13, function(i) {
#                     numericInput(paste0("val", valtag[1], motag[i], sep="_"), molabel[i],
#                                  0, min=0,max = 45.99 * 10^9,
#                                  width = "100%")
#                   }
#                   )
#            )
#          )
#   )  
# 
# })