shinyUI(fluidPage(
      titlePanel("Regression model experiments on the mtcars data set"),
      sidebarLayout(
      sidebarPanel(
            selectInput('inRegressors', 'Regressors', names(mtcars), multiple=TRUE, selectize=FALSE),
            #p("Chosen Predictor variables"),
            #verbatimTextOutput('outRegressors'),
            selectInput('regressand', 'Regressand variable', names(mtcars), multiple=FALSE, selectize=FALSE)
            #verbatimTextOutput('outRegressand')
      ),
      mainPanel(
            #plotOutput('plot1'),
            #plotOutput('plot2'),
            #plotOutput('plot3'),
            #plotOutput('plot4')
            fluidRow(
                  column(8,
                         plotOutput('plot1')      
                  ),
                  column(8,
                         plotOutput('plot2')
                  )
            ),
            fluidRow(
                  column(8,
                         plotOutput('plot3')      
                  ),
                  column(8,
                         plotOutput('plot4')
                  )
            )
            
      )
      )
))

