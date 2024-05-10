library(shiny)

letras <- letters
probabilidades <- runif(length(letras))

ui <- fluidPage(
  titlePanel("Previsão de Digitação em Tempo Real"),
  sidebarLayout(
    sidebarPanel(
      textInput("palavra", "Digite uma palavra:", value = ""),
      verbatimTextOutput("previsao")
    ),
    mainPanel(
      plotOutput("palpites")
    )
  )
)

server <- function(input, output, session) {
  
  observeEvent(input$palavra, {
    palavra <- input$palavra
    ultima_letra <- substr(palavra, nchar(palavra), nchar(palavra))
    
    if (nchar(palavra) > 0) {
      # Calcular as probabilidades de todas as letras
      probabilidades <- runif(length(letras))
      
      probabilidades_ordenadas <- sort(probabilidades, decreasing = TRUE)
      
      # Selecionar as 5 letras mais prováveis
      letras_plot <- letras[1:5]
      probabilidade_plot <- probabilidades_ordenadas[1:5]
      
      df <- data.frame(letra = letras_plot, probabilidade = probabilidade_plot)
      
      output$palpites <- renderPlot({
        barplot(df$probabilidade, names.arg = df$letra, col = "skyblue", main = "Palpites das Próximas Letras",
                xlab = "Letra", ylab = "Probabilidade")
      })
      
      letra_prevista <- letras[which.max(probabilidades)]
      
      output$previsao <- renderText({
        paste("Próxima letra prevista:", letra_prevista)
      })
    } else {
      output$palpites <- NULL
      output$previsao <- NULL
    }
  })
}

shinyApp(ui = ui, server = server)
