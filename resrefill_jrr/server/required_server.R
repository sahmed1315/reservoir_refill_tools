#----------------------------------------------------------------------------
output$odo <- renderPlot({
  
  #----------------------------------------------------------------------------
  gen_plots(odo.df(),
            start.date(),
            end.date(), 
            min.flow = input$min.flow,
            max.flow = input$max.flow,
            gages.checked = input$gages.odo,
            labels.vec = c("por" = "Point of Rocks",
                           "lfalls" = "Little Falls",
                           "predicted" = "Little Falls (Predicted)",
                           "marfc" = "MARFC Forecast"),
            linesize.vec = c("lfalls" = 2,
                             "marfc" = 1.5,
                             "por" = 2,
                             "predicted" = 1.5),
            linetype.vec = c("lfalls" = "solid",
                             "marfc" = "dashed",
                             "por" = "solid",
                             "predicted" = "dashed"),
            color.vec = c("lfalls" = "#0072B2",
                          "marfc" = "#009E73",
                          "por" = "#E69F00",
                          "predicted" = 	"#56B4E9"),
            x.class = "datetime",
            y.lab = y.units())
}) # End output$odo