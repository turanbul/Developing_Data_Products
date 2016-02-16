library(shiny)
library(ggplot2)

dataset <- diamonds

fluidPage(
  
  titlePanel("Law of large numbers proven interactively"),
  
  sidebarPanel(
    sliderInput(inputId = 'sampleSize', 'Number of Trials', min=0, max=1000,value=5, step=50, round=0),
    
    p("The law of large numbers state that the average of the results obtained from a large number
      of trials should be close to the expected value, and will tend to become closer as more trials
      are performed."),
    
    p("In this demo, you can use the slider to see the effects of LLN. As you increase the number
      of trials you will observe that the peak is converging to the real limit in this case 0")
    ),
  
  mainPanel(
    plotOutput(outputId = 'plot')
  )
)