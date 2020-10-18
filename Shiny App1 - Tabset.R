# install.packages('shiny')
library(shiny)

ui <- fluidPage(
  shiny::titlePanel('Title Panel'),
  shiny::mainPanel('Main Panel'),
  shiny::headerPanel('Header Panel'),
  shiny::selectInput('selectInput1', 'Tab or Panel', c('Tab', 'Panel')),
  shiny::conditionalPanel(condition = "input.selectInput1 == 'Tab",
                          shiny::tabsetPanel(
                            shiny::tabPanel("Tab 1",
                                            shiny::selectInput(inputId = 'selectinput1', label = 'selectinput1',choices = c('choice1','choice2','choice3'))),
                            shiny::tabPanel("Tab 2"),
                            shiny::tabPanel("Tab 3")
                          ))
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)