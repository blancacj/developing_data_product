library(shiny)
shinyUI(fluidPage(
    titlePanel("body mass index (BMI) calculation"),   
    sidebarLayout(
        sidebarPanel(
            textInput("weight", "Your weight",  "50"),            
            selectInput ("var1", "weight unit",
                         c("pounds","kilograms"),"kilograms"),
            textInput("height", "Your height",  "1.70"),                 
            selectInput ("var2","height unit",
                         c("inches","feet","meters"),"meters"),
            submitButton("submit")),        
        mainPanel(
            h3('Your BMI(kg/m^2)'),
            verbatimTextOutput("BMI"),
            h3('BMI Categories:'),
            h5('Underweight=<18.5'),
            h5('Normal weight =18.5-24.9'),
            h5('Overweight=25-29.9'),
            h5('Obesity=>30'))
    )   
))