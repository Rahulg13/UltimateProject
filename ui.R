library(shiny)

shinyUI(fluidPage(
        titlePanel("Text Prediction Model"),
        sidebarLayout(
                sidebarPanel(
                        h3("PREDICTION TEXT"),
                        textInput("txt", "Please enter the text below", value = "Write here"),
                        submitButton("Submit")
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