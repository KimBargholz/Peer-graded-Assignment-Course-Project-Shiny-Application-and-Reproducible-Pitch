#UI.R
#loading shiny library
library(shiny)

shinyUI(fluidPage(
    
    #fluid page for dynamically adapting to screens of different resolutions.
    titlePanel("Iris Dataset"),
    sidebarLayout(
        sidebarPanel(
            #implementing radio buttons
            radioButtons("p", "Select column of iris dataset:",
                         list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
            
            #slider input for bins of histogram
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
            
            # Show a plot of the generated distribution
        ),
        mainPanel(
            plotOutput("distPlot"),
            
            
        
    
        helpText("The user interface can be broadly divided into three categories",

"Title Panel: The content in the title panel is displayed as metadata, as in top left corner of above image which generally provides name of the application and some other relevant information",
"Sidebar Layout: Sidebar layout takes input from the user in various forms like text input, checkbox input, radio button input, drop down input, etc. It is represented in dark background in left section of the above image",
"Main Panel: It is part of screen where the output(s) generated as a result of performing a set of operations on input(s) at the server.R is / are displayed Note: while the data view will show only",
                 "the specified number of observations, the summary will be based on the full dataset.",
   " About the IRIS Dataset",
"IRIS data set gives measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of three species of iris.

The three species of Iris are setosa, versicolor and virginica.
The Sepals are the lower, or outermost, part of the flower (green and leaf-like). The Petals are colored segments of the corolla of a flower.")
        
        )

    ))
)