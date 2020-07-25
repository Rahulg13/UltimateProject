library(shiny)
library(dplyr)
library(tidytext)
library(tm)
shinyServer(function(input, output) {
        load(file = "base.rda")
        #t1 <- renderText(input$txt)
        output$out1 <- reactive({
                t1 <- input$txt
                t1 <- c(t1, "why")
        })
        #t1 <- as.character(t1)
        
        #output$out1 <- c(t1, "i am yours")
        #output$out1 <- renderText({
               #         t1
         #       c(t1, "i am yours")              
              #})
        output$out2 <- renderText("Garg")
})