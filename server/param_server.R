# #server <- function(input, output){
#   if(input$unit_vol == "BG"){
#     acft_to_bg <- 3068.88784901
#   } else {acft_to_bg <- 1}
#   # output$render_wq_vol <- renderUI({numericInput("param_wq_vol", "Water Quality (volume):", acft_to_bg*48885, min=0,max = 45.99 * 10^9, width = "100px")})
#   # output$render_ws_vol <- renderUI({numericInput("param_ws_vol", "Water Supply (volume):", acft_to_bg*0, min=0,max = 45.99 * 10^9, width = "100px")})
#   # output$render_sed_vol <- renderUI({numericInput("param_sed_vol", "Sediment (volume):", acft_to_bg*0, min=0,max = 45.99 * 10^9, width = "100px")})
#   # output$render_dead_vol <- renderUI({numericInput("param_dead_vol", "Gate Sill/Dead (volume):", acft_to_bg*0, min=0,max = 45.99 * 10^9, width = "100px")})
#   
#   observe(updateNumericInput(session, "param_wq_vol", value = input$param_wq_vol*acft_to_bg))
# #}