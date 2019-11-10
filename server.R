library(shiny)

shinyServer(function(input, output) {
  # reactive_df <-reactive({
  #   if(input$selection=="banners")
  #     return(select(banners, startsWith(input$selection)))
  #   else
  #     return(select(banners, startsWith(input$selection)))
  # })
  # #Generate an HTML table view of the data
  # output$table <- renderTable(reactive_df())
  
  output$table1 <- renderTable(auth_attempts)
  output$table2 <- renderTable(banners)
  output$table3 <- renderTable(cash_adjustments)
  output$table4 <- renderTable(comment_actions)
  output$table5 <- renderTable(comments)
  output$table6 <- renderTable(historical_assumptions)
  output$table7 <- renderTable(historical_trades)
  output$table8 <- renderTable(question_categories)
  output$table9 <- renderTable(question_category_links)
  output$table10 <- renderTable(question_choices)
  output$table11 <- renderTable(question_relationships)
  output$table12 <- renderTable(questions)
  output$table13 <- renderTable(questions_to_user_roles)
  output$table14 <- renderTable(recurring_trades)
  output$table15 <- renderTable(shadow_trades)
  output$table16 <- renderTable(user_badges)
  output$table17 <- renderTable(user_roles)
  output$table18 <- renderTable(users)
  output$table19 <- renderTable(users_to_user_badges)
  output$table20 <- renderTable(users_to_user_invitations)
  output$table21 <- renderTable(users_to_user_roles)
  
})