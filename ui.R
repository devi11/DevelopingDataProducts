## DataProductsProject 

setwd("~/Documents/R Practice/DataProducts")

# UI for convertor application 

shinyUI(fluidPage(
  titlePanel("Conversion Application"),
  sidebarLayout(
      sidebarPanel(
        p("Select the conversion ",strong("units") ,"and enter the ",strong("values")),
        
      
        numericInput(inputId="value",label = "Your value",min=0,value=25),
      
        selectInput(inputId = "from",label = "Convert From", 
                                                           choices = list("Pound","Kilogram","Ounces"),selected = "Kilogram"),
        selectInput(inputId= "to",label = "Convert To",
                                     choices =list("Pound","Kilogram","Ounces"),selected= "Pound") ,
        
        
        submitButton(text="Submit")
      ),
 
   mainPanel(
    textOutput("Text"),
    verbatimTextOutput("convert")
  )
  )
))


  