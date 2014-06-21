library(shiny)
data(mtcars)



shinyServer(
      function(input, output, session) {
            #output$outRegressors <- renderPrint(input$inRegressors)
            #output$outRegressand <- renderPrint(input$regressand)
            
            regressors <- reactive({
                  do.call(paste, c(as.list(input$inRegressors), sep=" + "))
            })
            
            formulaText <- reactive({
                  paste(input$regressand,regressors() , sep=' ~ ')
            })

            fit <- reactive({ 
                  lm(as.formula(formulaText()) , data = mtcars)
            })
            
            output$model <- renderText({
                  paste("Model: ",formulaText(), sep = " ")
            })
            
            output$plot1 <- renderPlot({
                  plot(fit(), which = 1)
            })
            
            output$plot2 <- renderPlot({      
                  plot(fit(), which = 2)
            })
            output$plot3 <- renderPlot({
                  plot(fit(), which = 3)

            })
            output$plot4 <- renderPlot({
                  plot(fit(), which = 4)
            })
            
            output$summary <- renderPrint({
                  summary(fit())
            })
            
            output$correlation <- renderPrint({
                  cor(fit()$residuals, fit()$model)
            })
            
            output$shapiro <- renderPrint({
                  shapiro.test(fit()$residuals)
            })
            
            output$mean <- renderPrint({
                  mean(fit()$residuals)
            })
            
      }
)

