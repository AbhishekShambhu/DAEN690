library(shiny)
###SciCast 

##Read and View the Dataset Tables
# auth_attempts <- read.csv("D:/sem3/daen690/R project/SciCastTables/auth_attempts.csv")
# banners <- read.csv("D:/sem3/daen690/R project/SciCastTables/banners.csv")
# cash_adjustments <- read.csv("D:/sem3/daen690/R project/SciCastTables/cash_adjustments.csv")
# comment_actions <- read.csv("D:/sem3/daen690/R project/SciCastTables/comment_actions.csv")
# comments <- read.csv("D:/sem3/daen690/R project/SciCastTables/comments.csv")
# historical_assumptions <- read.csv("D:/sem3/daen690/R project/SciCastTables/historical_assumptions.csv")
# historical_trades <- read.csv("D:/sem3/daen690/R project/SciCastTables/historical_trades.csv")
# question_categories <- read.csv("D:/sem3/daen690/R project/SciCastTables/question_categories.csv")
# question_category_links <- read.csv("D:/sem3/daen690/R project/SciCastTables/question_category_links.csv")
# question_choices <- read.csv("D:/sem3/daen690/R project/SciCastTables/question_choices.csv")
# question_relationships <- read.csv("D:/sem3/daen690/R project/SciCastTables/question_relationships.csv")
# questions <- read.csv("D:/sem3/daen690/R project/SciCastTables/questions.csv")
# questions_to_user_roles <- read.csv("D:/sem3/daen690/R project/SciCastTables/questions_to_user_roles.csv")
# recurring_trades <- read.csv("D:/sem3/daen690/R project/SciCastTables/recurring_trades.csv")
# shadow_trades <- read.csv("D:/sem3/daen690/R project/SciCastTables/shadow_trades.csv")
# user_badges <- read.csv("D:/sem3/daen690/R project/SciCastTables/user_badges.csv")
# user_roles <- read.csv("D:/sem3/daen690/R project/SciCastTables/user_roles.csv")
# users <- read.csv("D:/sem3/daen690/R project/SciCastTables/users.csv")
# users_to_user_badges <- read.csv("D:/sem3/daen690/R project/SciCastTables/users_to_user_badges.csv")
# users_to_user_invitations <- read.csv("D:/sem3/daen690/R project/SciCastTables/users_to_user_invitations.csv")
# users_to_user_roles <- read.csv("D:/sem3/daen690/R project/SciCastTables/users_to_user_roles.csv")

#Define UI
ui <- pageWithSidebar(
  # App title ----
  headerPanel("SciCast Dashboard: Analysis of Prediction Market Data"),
  
  # Sidebar panel ----
  sidebarPanel(
    
  ),
  
  # Main panel for displaying ----
  mainPanel(
    tabsetPanel( type = "tabs", selected = "auth_attempts",
                 tabPanel("auth_attempts", 
                          h2("View of auth_attempts table"),
                          tableOutput("table1")),
                 tabPanel("banners", 
                          h2("View of banners table"),
                          tableOutput("table2"))
    )
  )
)


# Define server logic
server <- function(input, output) {
  #Generate an HTML table view of the data
  output$table1 <- renderTable({
    auth_attempts)
  })
  output$table2 <- renderTable({
    data.frame(banners)
  })
}

shinyApp(ui, server)

