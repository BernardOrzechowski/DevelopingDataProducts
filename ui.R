shinyUI(pageWithSidebar(
      headerPanel("Example plot"),
      sidebarPanel(
            selectInput('inRegressors', 'Regressors', names(mtcars), multiple=TRUE, selectize=FALSE),
            p("Chosen Predictor variables"),
            verbatimTextOutput('outRegressors'),
            selectInput('regressand', 'Regressand variable', names(mtcars), multiple=FALSE, selectize=FALSE),
            verbatimTextOutput('outRegressand')
      ),
      mainPanel(
            plotOutput('plot1'),
            plotOutput('plot2'),
            plotOutput('plot3'),
            plotOutput('plot4')
            
      )
))

