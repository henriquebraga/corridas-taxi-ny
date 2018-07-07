#install.packages("shinydashboard")
library(shinydashboard)

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Home", tabName="home", icon=icon("home")),
    menuItem("Sobre os alunos", tabName="grupo", icon=icon("users")),
    hr(),
    menuItem("Enriquecimento de dados", icon = icon('line-chart'), tabName = "data-enrich"),
    menuItem("Analise Exploratoria Inicial", icon = icon('line-chart'), tabName = "initial-data-explore"),
    menuItem("Pedidas de corrida", icon = icon('line-chart'), tabName = "pickups"),
    menuItem("Términos de corrida", icon = icon('line-chart'), tabName = "dropoffs"),
    menuItem("Corridas por tempo", icon = icon('line-chart'), tabName = "time"),
    menuItem("Pontos de interesse", icon = icon('line-chart'), tabName = "points"),
    menuItem("Regressao Linear", icon = icon('line-chart'), tabName = "regression")
  )
)

body <-  dashboardBody(
  tabItems(
    tabItem(tabName = "home",
            includeHTML("www/inicio.html")
    ),
    tabItem(tabName = "grupo",
            h2("Grupo"),
            h5("Carolene Bertoldi"),
            h5("Henrique Braga"),
            h5("Igor Chaves"),
            h5("Marco Antônio Bonamichi")
    ), 
    tabItem(tabName = "data-enrich",
            includeHTML("www/enriquecimento.html")
    ),
    tabItem(tabName = "initial-data-explore",
            includeHTML("www/exploracao_inicial.html")
    ),
    tabItem(tabName = "pickups",
            includeHTML("analise_pedidas_taxi.html")
    ),
    tabItem(tabName = "dropoffs",
            includeHTML("www/analise_saidas_taxi.html")
    ),
    tabItem(tabName = "time",
            includeHTML("www/analise_temporal.html")
    ),
    tabItem(tabName = "regression",
            includeHTML("www/regressao_simples.html")
    )
  )
)

dashboardPage( header = dashboardHeader(title = "Analise NY"),
               skin = "yellow",
               sidebar = sidebar,
               body = body
)

