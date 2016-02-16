library(shiny)
library(stats)

function(input, output) {
  output$plot = renderPlot({
    t = list()
    a = reactive({input$sampleSize})
    num = strtoi(a())
    for(i in 1 : num) {t[i] = mean(rnorm(n=25))}
    t = unlist(t)
    hist(t, col = "blue1", xlab = "Mean of Normal Distributions with 25 trials",
         breaks = c(seq(-2.1,2.1,by = 0.2)), ylim = c(0,500),
         main = "Histogram of Standard Normal Distributions")
    })
  }