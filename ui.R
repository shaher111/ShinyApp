library(shiny)

shinyUI(
  fluidPage(
    titlePanel("ShinyApp"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("sliderMPG","what is the MAP of the car?", 10,35,value = 20),
        checkboxInput("showModel1","show/hide Model 1", value = T),
        checkboxInput("showModel2","show/hide Model 2", value = T),
        radioButtons(inputId = "data"  , label = "show data ?"  ,choices = c("All Data","Head Data","Tail Data") , ),
        submitButton("submit")
      ),
      mainPanel(
        tabsetPanel(
          type = "tabs",
          tabPanel("summary",verbatimTextOutput("sum")),
          tabPanel("data",verbatimTextOutput("data")),
          tabPanel("plot",plotOutput("plot1"),
                   h3("Predicted Horsepower from Model 1:"),
                   textOutput("pred1"),
                   h3("Predicted Horsepower from Model 2:"),
                   textOutput("pred2"))
          )
      )
    )
  )
)


