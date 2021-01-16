# setwd("~/Desktop/R/Shiny_tutorials/shiny.rstudio.com-tutorial/Pi-practice")
library(shiny)

ui <- fluidPage(
        sliderInput("num", label = "Choose the numbers in the sample:",
                    min = 0, max =1000, value = 10,
                    width = 400),
        plotOutput("hist")
)

server <- function(input, output){
    
        output$hist <- renderPlot({
            # Code chunks that builds the object goes in here
            # Its just the regular R script but replace the input with input$.. in the ui to make it reactive.
            hist(rnorm(input$num))
        })
}

shinyApp(ui = ui, server = server)
