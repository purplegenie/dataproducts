library(shiny)
shinyServer(function(input, output) {
  
  observe({
    if (input$submit == 0)
      return()
    
    isolate({
        
   output$BMI <- renderText({
    input$submit
    isolate(paste((input$weight/(input$height ^ 2))*703))
  })
  
  output$category <- renderText({
    input$submit
    isolate( 
      if (((input$weight/(input$height ^ 2))*703) >= 30) "Obese"
      else if (((input$weight/(input$height ^ 2))*703) >= 25) "Overweight"
      else if (((input$weight/(input$height ^ 2))*703) >= 18.5) "Normal"
      else if (((input$weight/(input$height ^ 2))*703) < 18.5) "Underweight"
      else "BMI cannot be calculated"
        )
    
  })
  
  })
  })
})
