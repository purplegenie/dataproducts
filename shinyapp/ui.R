library(shiny)
shinyUI(
  fluidPage(
    titlePanel("Calculate Your Body Mass Index (BMI)"),
    
    sidebarPanel(
      h4('Enter your height and weight.'),
      numericInput('height', 'Height, in inches:', NULL, min = 1, max = 500, step = 1),
      numericInput('weight', label = 'Weight, in pounds:', NULL, min = 1, max = 5000, step = 1),
      actionButton("submit", "Submit")
    ),
         
    mainPanel(
      h4('Your BMI is:'),
      textOutput("BMI"),
      br(),
      h4('Based on your BMI, your category is:'),
      textOutput("category"),
      br(),
      h4('Learn More'),
      p('To learn more about BMI and healthy weight, ',
        a('visit the Centers for Disease Control and Prevention.', 
          href = "http://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html"))
    )    
  ))