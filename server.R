library(shiny)
library(dplyr)
library(tidytext)
shinyServer(function(input, output) {
        load(file = "base.Rdata")
        output$out1 <- renderText("Rahul")   
        output$out2 <- renderText("Garg")
})