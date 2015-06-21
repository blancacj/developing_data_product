library(shiny)
source("BMI_cal.R")

shinyServer(
    function(input,output) {
       output$BMI<-renderPrint(BMI_cal(input$weight,input$var1,input$height,input$var2))
    }
    )
