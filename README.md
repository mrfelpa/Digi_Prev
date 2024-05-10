# Funcionalidades:

- Previsão da próxima letra em tempo real.
- Exibição das cinco letras mais prováveis ​​em um gráfico de barras.
- Probabilidade individual para cada letra prevista.
- Limpeza da interface quando o campo de texto está vazio.

# Uso:

- Clone o repositório para o seu diretório local:

          git clone https://github.com/mrfelpa/Digi_Prev.git
  
- Navegue até o diretório do projeto:

          cd Digi_Prev
  
- Execute o aplicativo Shiny: ***RStudio <- FALSE; shinyApp(ui = ui, server = server)***
- Digite uma palavra na caixa de texto ***"Digite uma palavra:".***
- Observe as previsões das próximas letras no gráfico de barras e no texto abaixo.
  
![digiprev](https://github.com/mrfelpa/Digi_Prev/assets/65371336/60f65490-53fc-4ebb-b094-f1981b8fe954)

# Considerações Adicionais

- Este modelo utiliza um algoritmo probabilístico simples e não leva em consideração o contexto da palavra ou a gramática da língua.
- O desempenho do modelo pode variar dependendo do tamanho do vocabulário e da distribuição das frequências das letras.

# Contribuições

- Sinta-se à vontade para contribuir com este projeto sugerindo melhorias, relatando bugs ou criando novos recursos.

# Implementações futuras

- [ ] Utilizar dados de digitação real para treinar o algoritmo.
- [ ] Adicionar recursos adicionais à interface, como sugestões de palavras e correção ortográfica.
- [ ] Explorar diferentes algoritmos probabilísticos para otimizar o desempenho do modelo.
- [ ] Implementar técnicas de aprendizado de máquina para melhorar a precisão das previsões.
