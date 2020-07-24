library(shiny)
shinyServer(function(input, output) {
        output$out1 <- renderText("Rahul")      
        output$out2 <- renderText("Garg")
})