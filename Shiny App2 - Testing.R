library(shiny)

ui <- fluidPage( 
  shiny::titlePanel(title = 'titlePanel', windowTitle = 'windowTitle'),
  shiny::plotOutput('Plot'),
  shiny::mainPanel('mainPanel'),
  shiny::headerPanel('headerPanel'),
  shiny::inputPanel(shiny::selectInput(inputId = 'selectInput1', 
                                       label = 'selectInput1', 
                                       choices = c('selectInput1_choice1', 
                                                   'selectInput1_choice2', 
                                                   'selectInput1_choice3'))),
  shiny::checkboxInput('checkboxInput1', 'checkboxInput1', FALSE),
  shiny::conditionalPanel(condition = 'input.checkboxInput1',
                          shiny::absolutePanel(shiny::wellPanel(shiny::selectInput(inputId = 'selectInput2',
                                                                                   label = 'selectInput2', 
                                                                                   choices = c('selectInput2_choice1',
                                                                                               'selectInput2_choice2',
                                                                                               'selectInput2_choice3'))),
                                               top = 0,
                                               right = 0, 
                                               draggable = TRUE,
                                               cursor = 'move',
                                               width = 350)),
  shiny::tabsetPanel(shiny::tabPanel('tab1'),
                     shiny::tabPanel('tab2'),
                     shiny::tabPanel('tab3'))
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)