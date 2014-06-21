shinyUI(fluidPage(
      titlePanel("Regression model experiments on the mtcars data set"),
      fluidRow(
            column(3,
                   selectInput('inRegressors', 'Regressors', names(mtcars), multiple=TRUE, selected = "am",selectize=FALSE)      
            ),
            column(3,
                   selectInput('regressand', 'Regressand variable', names(mtcars), multiple=FALSE, selectize=FALSE)
            ),
            column(5,
                   h3(textOutput('model'))
            )
      ),
      
      
            fluidRow(
                  column(6,
                         plotOutput('plot1')      
                  ),
                  column(6,
                         plotOutput('plot2')
                  )
            ),
            fluidRow(
                  column(6,
                         plotOutput('plot3')      
                  ),
                  column(6,
                         plotOutput('plot4')
                  )
            )
            
 )
)

