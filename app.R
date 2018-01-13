## app.R ##
library(shiny)
library(shinydashboard)
library(knitr)


ui <- dashboardPage(
  
  dashboardHeader(title = "QCI CSSBB Primer R Examples"),
  
  dashboardSidebar(

    sidebarMenu(

     menuItem("Overview", 
              tabName = "overview",
              icon = icon("home", lib = "glyphicon")
              ),
      
     menuItem("Supporting Info",
              icon = icon("info-circle", lib = "font-awesome"),
              
              menuItem("Concept Demos",
                       tabName = "conceptdemos",
                       icon = icon("th")
                       )
              
              ), 
     
      menuItem("Chapter 6",
               icon = icon("book", lib = "font-awesome"),

               menuItem("Gauge R&R",
                        tabName = "grr",
                        icon = icon("th")
                        )
               
               ),  # end menuItem Examples
      
     menuItem("Chapter 7",
              icon = icon("book", lib = "font-awesome"),

              menuItem("Stem and Leaf Plot",
                       tabName = "stemleaf",
                       icon = icon("th")
                       ),
              
              menuItem("Box Plot",
                       tabName = "boxplot",
                       icon = icon("th")
                       )
              
              ),  # end menuItem Examples
     
     menuItem("Chapter 8",
              icon = icon("book", lib = "font-awesome"),
              
              menuItem("Simple Linear Regression",
                       tabName = "slreg",
                       icon = icon("th")
                       ),
              
              menuItem("Factor Analysis and PCA",
                       tabName = "fapca",
                       icon = icon("th")
                       ),
              
              menuItem("Discriminant Analysis",
                       tabName = "discrim",
                       icon = icon("th")
                      ),
              
              menuItem("Cluster Analysis",
                       tabName = "cluster",
                       icon = icon("th")
                       ),
              
              menuItem("MANOVA",
                       tabName = "manova",
                       icon = icon("th")
                       )
              
              )  # end menuItem Examples

    )  # end sidebarMenu
    
  ),  # end dashboardSidebar
  
  dashboardBody(
    
    tabItems(

      tabItem(tabName = "overview",
              includeMarkdown("overview.md")
      ),
      
      tabItem(tabName = "conceptdemos",
              includeMarkdown("concept demos.md")
      ),

      tabItem(tabName = "grr",
              uiOutput('grr_markdown')
      ),
      
      tabItem(tabName = "stemleaf",
              uiOutput("stemleaf_markdown")
      ),

      tabItem(tabName = "boxplot",
              uiOutput("boxplot_markdown")
      ),
      
      tabItem(tabName = "slreg",
              uiOutput("slreg_markdown")
      ),
      
      tabItem(tabName = "fapca",
              uiOutput("fapca_markdown")
      ),
      
      tabItem(tabName = "discrim",
              uiOutput("discrim_markdown")
      ),
      
      tabItem(tabName = "cluster",
              uiOutput("cluster_markdown")
      ),
      
      tabItem(tabName = "manova",
              uiOutput("manova_markdown")
      )
    
    )  # end tabItems
  
  )  # end dashboardBody

)  # end dashboardPage


server <- function(input, output, session){
  
  # NEED TO RENDER/KNIT THE HTML FILES IN ADVANCE OF PUTTING ON SERVER
  # rmarkdown::render("ch06p50_gauge_rr.rmd")
  # rmarkdown::render("ch07p15_stemleaf.rmd")
  # rmarkdown::render("ch08p03_simplelinearregression.rmd")
  # rmarkdown::render("ch08p17_factor_analysis.rmd")


  output$grr_markdown <- renderUI({
    includeHTML("ch06p50_gauge_rr.html")
  })

  output$stemleaf_markdown <- renderUI({
    includeHTML("ch07p15_stemleaf.html")
  })

  output$boxplot_markdown <- renderUI({
    includeHTML("ch07p14_boxplots.html")
  })
  
  output$slreg_markdown <- renderUI({
    includeHTML("ch08p03_simplelinearregression.html")
  })
  
  output$fapca_markdown <- renderUI({
    includeHTML("ch08p17_factor_analysis.html")
  })
  
  output$discrim_markdown <- renderUI({
    includeHTML("ch08p19_discriminant_analysis.html")
  })
  
  output$cluster_markdown <- renderUI({
    includeHTML("ch08p21_cluster_analysis.html")
  })
  
  output$manova_markdown <- renderUI({
    includeHTML("ch08p26_manova.html")
  })

}


shinyApp(ui, server)