library(shiny)
data(mtcars)



shinyServer(
      function(input, output, session) {
            output$outRegressors <- renderPrint(input$inRegressors)
            output$outRegressand <- renderPrint(input$regressand)
            regressors <- do.call(paste, output$outRegressors, sep=" + "))

            formulaText <- reactive({
                  paste(input$regressand, regressors, sep=" ~ ")
            })

            fit <- lm(as.formula(formulaText()) , data = mtcars)
            
            output$plot1 <- renderPlot({
                  plot(fit, which = 1)
            })
            
            output$plot2 <- renderPlot({      
                  plot(fit, which = 2)
            })
            output$plot3 <- renderPlot({
                  plot(fit, which = 3)

            })
            output$plot4 <- renderPlot({
                  plot(fit, which = 4)
            })
            
      }
)

