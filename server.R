library(shiny)
library(dplyr)
library(tidytext)
library(tm)
shinyServer(function(input, output) {
        load(file = "base.rda")
        
        ### f starts
        predict3 <- function(x) {
                x1 <- x
                x1 <- tolower(x1)
                x1 <- removePunctuation(x1)
                x1 <- stripWhitespace(x1)
                x1 <- unlist(strsplit(x1, " "))
                
                l <- length(x1)
                
                if (any(wordfreq3$gram3b == x1[l] & wordfreq3$gram3a == x1[l-1]) == FALSE)
                {
                        predict2(x)
                }
                else 
                {
                        pos <- which(wordfreq3$gram3b == x1[l] & wordfreq3$gram3a == x1[l-1])
                        mini <- wordfreq3[pos, ]
                        pos <- sort.list(mini[,1])
                        mini <- mini[pos, ]
                        mini[1:4, 5]
                }
        }
        
        
        predict2 <- function(x) {
                x1 <- x
                x1 <- tolower(x1)
                x1 <- removePunctuation(x1)
                x1 <- stripWhitespace(x1)
                x1 <- unlist(strsplit(x1, " "))
                
                l <- length(x1)
                
                if (any(wordfreq2$gram2a == x1[l]) == FALSE)
                {
                        predict1(x)
                }
                else 
                {
                        pos <- which(wordfreq2$gram2a == x1[l])
                        mini <- wordfreq2[pos, ]
                        pos <- sort.list(mini[,1])
                        mini <- mini[pos, ]
                        mini[1:6, 4]
                }
        }
        
        
        predict1 <- function(x) { 
                x1 <- x
                x1 <- tolower(x1)
                x1 <- removePunctuation(x1)
                x1 <- stripWhitespace(x1)
                x1 <- unlist(strsplit(x1, " "))
                
                l <- length(x1)
                
                if ((any(wordfreq$gram1 == x1[l])) == FALSE) {
                        wordfreq[1:2, 1]        
                }
                else {
                        pos <- which(wordfreq$gram1 == x1[l])
                        pos <- which(wordfreq[pos, 1] ==wordfreq[,1])
                        wordfreq[pos,1]
                }
                
        }
        
        ### f ends 
        
        
        output$out1 <- reactive({
                t1 <- input$txt
                predict3(t1)
        })
        output$out2 <- renderText("Garg")
})