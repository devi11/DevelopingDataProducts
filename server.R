
library(shiny)

shinyServer(function(input, output) { 
 
  output$Text <- renderText ({
    paste("Converting ",input$from,"to ",input$to)
 })
   out<- reactive ( { 
     ## Weight
     if( input$from == "Kilogram" & input$to == "Pound")
     { data <- input$value*2.20462 } 
     else if (input$from == "Pound" & input$to == "Kilogram")
     {data<- input$value/2.20462}
     
     else if (input$from == "Pound" & input$to == "Ounces")
     {data<- input$value*16}
     else if (input$from == "Ounces" & input$to == "Pound")
     {data<- input$value/16}
     
     else if (input$from == "Kilogram" & input$to == "Ounces")
     {data<- input$value*35.274}
     else if (input$from == "Ounces" & input$to == "Kilogram")
     {data<- input$value/35.274}
     
     
     else if (input$from == "Pound" & input$to == "Pound")
     {data<- input$value*1}
     else if (input$from == "Kilogram" & input$to == "Kilogram")
     {data<- input$value*1}
     else if (input$from == "Ounces" & input$to == "Ounces")
     {data<- input$value*1}
   })
                          
 output$convert<- renderText({paste(input$value,input$from,"=",out(),input$to)})
  })