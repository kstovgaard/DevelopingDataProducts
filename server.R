library(shiny)

metricHeight <- function(feet,inches) feet*30.48+inches*2.54

shinyServer(
    function(input,output){
        output$heightToDisplay <- renderPrint({metricHeight(input$feet,input$inches)})
    }
)