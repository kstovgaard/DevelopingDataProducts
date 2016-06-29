shinyUI(
    pageWithSidebar(  
        # Application Title
        headerPanel("Conversion from imperial to metric height"),  
        
        # sidebar panel with sliders
        sidebarPanel(    
            h2("Input height"),
            sliderInput('feet','Integer feet',value = 5, min = 0, max = 7, step = 1,),
            sliderInput('inches','Additional inches',value = 8, min = 0, max = 11, step = 1,)
        ),
    
        # main panel for result
        mainPanel( 
            h3("Simple application to do the annoying conversion from heights in U.S. units to height in cm."),
            h2("Equivalent height in cm:"),
            verbatimTextOutput('heightToDisplay')
    )
  )
)