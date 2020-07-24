library(shiny)

shinyUI(fluidPage(
        titlePanel("Text Prediction Model"),
        sidebarLayout(
                sidebarPanel(
                        h3("PREDICTION TEXT"),
                        textInput("text", "Please enter the text below", value = "Write here")
                ),
                mainPanel(
                        tabsetPanel(
                                tabPanel("Prediction", 
                                         textOutput("out1"),
                                         textOutput("out2")
                                         ),
                                tabPanel("Probabilities", )
                        )
                )
        )
)
)