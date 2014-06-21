shinyUI(fluidPage(
      titlePanel("Regression model experiments on the mtcars data set"),
      fluidRow(
            column(4,
                   selectInput('inRegressors', 'Regressors', c("Miles/(US) gallon (mpg)" = "mpg",
                                                               "Number of cylinders (cyl)" = "cyl",
                                                               "Displacement (cu.in.)  (disp)" = "disp",
                                                               "Gross horsepower  (hp)" = "hp",
                                                               "Rear axle ratio  (drat)" = "drat",
                                                               "Weight (lb/1000)  (wt)" = "wt",
                                                               "1/4 mile time  (qsec)" = "qsec",
                                                               "V/S Engine  (vs)" = "vs",
                                                               "Transmission (0 = automatic, 1 = manual)  (am)" = "am",
                                                               "Number of forward gears  (gear)" = "gear",
                                                               "Number of carburetors  (carb)" = "carb"
                   ), multiple=TRUE, selected = "am",selectize=FALSE)      
                   
            ),
            column(4,
                   selectInput('regressand', 'Regressand variable', c("Miles/(US) gallon (mpg)" = "mpg",
                                                                      "Number of cylinders (cyl)" = "cyl",
                                                                      "Displacement (cu.in.)  (disp)" = "disp",
                                                                      "Gross horsepower  (hp)" = "hp",
                                                                      "Rear axle ratio  (drat)" = "drat",
                                                                      "Weight (lb/1000)  (wt)" = "wt",
                                                                      "1/4 mile time  (qsec)" = "qsec",
                                                                      "V/S Engine  (vs)" = "vs",
                                                                      "Transmission (0 = automatic, 1 = manual)  (am)" = "am",
                                                                      "Number of forward gears  (gear)" = "gear",
                                                                      "Number of carburetors  (carb)" = "carb"
                   ), multiple=FALSE, selectize=FALSE)
            ),
            column(4,
                   h3(textOutput('model'))
            )
      ),
      
      fluidRow(
            column(12,
                   h3("Diagnostics")      
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

