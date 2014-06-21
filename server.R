library(shiny)
data(mtcars)
variable_names <- names(mtcars)


shinyServer(
      function(input, output, session) {
            output$outRegressors <- renderPrint(input$inRegressors)
            output$outRegressand <- renderPrint(input$regressand)
            output$plot1 <- renderPlot({
                  fit <- lm(mpg ~ . , data = mtcars); 
                  plot(fit, which = 1)
            })
            output$plot2 <- renderPlot({
                  fit <- lm(mpg ~ . , data = mtcars); 
                  plot(fit, which = 2)
            })
            output$plot3 <- renderPlot({
                  fit <- lm(mpg ~ . , data = mtcars); 
                  plot(fit, which = 3)

            })
            output$plot4 <- renderPlot({
                  fit <- lm(mpg ~ . , data = mtcars); 
                  plot(fit, which = 4)
            })
            
      }
)

