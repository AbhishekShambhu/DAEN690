library(shiny)

#Define UI
fluidPage(
  # App title ----
  titlePanel("SciCast Dashboard: Analysis of Prediction Market Data"),
  
  # sidebarLayout(
  # # Sidebar panel ----
  # sidebarPanel(
  #   selectInput("selection", "Select  to view a SciCast Table: ", c("auth_attempts","banners"))
  # )
  # ),
  # navlistPanel(
  #   "SciCast Tables",
  #   tabPanel("Banners")
  # ),
  
  # Main panel for displaying ----
  mainPanel(
    #tableOutput('table')
    tabsetPanel(
      tabPanel("auth_attempts",
               h2("View of auth_attempts table"),
               tableOutput("table1")),
      tabPanel("banners",
               h2("View of banners table"),
               tableOutput("table2")),
      tabPanel("cash_adjustments",
               h2("View of cash_adjustments table"),
               tableOutput("table3")),
      tabPanel("comment_actions",
               h2("View of comment_actions table"),
               tableOutput("table4")),
      tabPanel("comments",
               h2("View of comments table"),
               tableOutput("table5")),
      tabPanel("historical_assumptions",
               h2("View of historical_assumptions table"),
               tableOutput("table6")),
      tabPanel("historical_trades",
               h2("View of historical_trades table"),
               tableOutput("table7")),
      tabPanel("question_categories",
               h2("View of question_categories table"),
               tableOutput("table8")),
      tabPanel("question_category_links",
               h2("View of question_category_links table"),
               tableOutput("table9")),
      tabPanel("question_choices",
               h2("View of question_choices table"),
               tableOutput("table10")),
      tabPanel("question_relationships",
               h2("View of question_relationships table"),
               tableOutput("table11")),
      tabPanel("questions",
               h2("View of questions table"),
               tableOutput("table12")),
      tabPanel("questions_to_user_roles",
               h2("View of questions_to_user_roles table"),
               tableOutput("table13")),
      tabPanel("recurring_trades",
               h2("View of recurring_trades table"),
               tableOutput("table14")),
      tabPanel("shadow_trades",
               h2("View of shadow_trades table"),
               tableOutput("table15")),
      tabPanel("user_badges",
               h2("View of user_badges table"),
               tableOutput("table16")),
      tabPanel("user_roles",
               h2("View of user_roles table"),
               tableOutput("table17")),
      tabPanel("users",
               h2("View of users table"),
               tableOutput("table18")),
      tabPanel("users_to_user_badges",
               h2("View of users_to_user_badges table"),
               tableOutput("table19")),
      tabPanel("users_to_user_invitations",
               h2("View of users_to_user_invitations table"),
               tableOutput("table20")),
      tabPanel("users_to_user_roles",
               h2("View of users_to_user_roles table"),
               tableOutput("table21"))
    )
)
)