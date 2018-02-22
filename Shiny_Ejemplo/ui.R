library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    
    dashboardHeader(title="Este es el encabezado", dropdownMenuOutput("msgOutput"),
                    # dropdownMenu(type="message",
                    #              messageItem(from="Actualizacion de finanzas",message = "Estamos en pausa"),
                    #              messageItem(from="Actualizacion de ventas",message = "Rebajas de temporada",icon=icon("bar-chart"),time="22:00"),
                    #              messageItem(from="Alerta de reunion",message = "Reunion de trabajo",icon=icon("calendar", lib = "font-awesome"),time="01-16-2018")
                    #              )
                    
                    
                    
                    
                    
                    
                    
                    
                    dropdownMenu(type="notifications",
                                 notificationItem(text="Dos nuevas tablas se han agregado",icon=icon("dashboard"),
                                                  status="success"),
                                 notificationItem(text="El servidor esta sobrecargado",icon=icon("warning"),
                                                  status="warning")
                                 
                    )
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    ),
    dashboardSidebar(
      
                     sliderInput("bins","Numero de semestre",1,100,50),
                     sidebarMenu(
                     menuItem("Panel Principal",tabName = "dashboard",icon=icon("dashboard")),
                     menuSubItem("Finanzas",tabName = "finance"), 
                     menuSubItem("Ventas",tabName = "sales"),
                     menuItem("Compras"),menuSubItem("Mayoreo"), 
                     menuItem("Inventario"),menuSubItem("Bodega"))),
    dashboardBody(
      
      tabItems(
        tabItem(tabName="dashboard",fluidRow(box(plotOutput("histogram")))),
        tabItem(tabName="finance",h1("Panel de finanzas")),
        tabItem(tabName="sales",h2("Panel de ventas"))
      
      
      
      
      
      
      )
      
      
      
    )
    
  )
)