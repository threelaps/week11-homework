library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(iris, n = input$obs)
  })
  output$distPlot <- renderPlot({
    n = input$obs
    plot(iris[1:n,])
  })
})
