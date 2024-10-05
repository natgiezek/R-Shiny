library(shiny)

# Define the UI
ui <- fluidPage(
  titlePanel("My own App"),
  textInput(inputId = "my_text", label = "Enter my text"),
  textOutput(outputId = "print_text")
)


server <- function(input, output) {
  output$print_text <- renderText(input$my_text)
}

shinyApp(ui = ui,server = server)