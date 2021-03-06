## app.R ##
library(shiny)
library(shinydashboard)
library(knitr)


ui <- dashboardPage(
  
  dashboardHeader(title = "QCI CSSBB Primer R Examples"),
  
  dashboardSidebar(
    
    width = 300, 
    
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
                       ),
              
              menuItem("Hypothesis Testing Overview",
                       tabName = "hypothtest",
                       icon = icon("th")
                       ),
              
              menuItem("Z Test",
                       tabName = "ztest",
                       icon = icon("th")
                       ),
              
              menuItem("One Sample Student t Test Page 43",
                       tabName = "ttest_one_43",
                       icon = icon("th")
              ),
              
              menuItem("One Sample Student t Test Page 44",
                       tabName = "ttest_one_44",
                       icon = icon("th")
              ),
              
              menuItem("Chi Square Test for Association Page 50",
                       tabName = "chisqtest_50",
                       icon = icon("th")
              ),
              
              menuItem("Two Sample Student t Test Page 54-56",
                       tabName = "ttest_two_54",
                       icon = icon("th")
              ),
              
              menuItem("F Test Page 59",
                       tabName = "ftest_59",
                       icon = icon("th")
              ),
              
              menuItem("One Way ANOVA Page 63",
                       tabName = "oneway_anova_63",
                       icon = icon("th")
              ),
              
              menuItem("Two Way ANOVA Page 65",
                       tabName = "twoway_anova_65",
                       icon = icon("th")
              ),
              
              menuItem("Two Way ANOVA with Interaction Page 67",
                       tabName = "twoway_anova_int_67",
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
      ),
      
      tabItem(tabName = "hypothtest",
              uiOutput("hypothtest_markdown")
      ),
      
      tabItem(tabName = "ztest",
              uiOutput("ztest_markdown")
      ),
      
      tabItem(tabName = "ttest_one_43",
              uiOutput("ttest_one_43_markdown")
      ),
      
      tabItem(tabName = "ttest_one_44",
              uiOutput("ttest_one_44_markdown")
      ),
      
      tabItem(tabName = "chisqtest_50",
              uiOutput("chisqtest_50_markdown")
      ),
    
      tabItem(tabName = "ttest_two_54",
              uiOutput("ttest_two_54_markdown")
      ),
      
      tabItem(tabName = "ftest_59",
              uiOutput("ftest_59_markdown")
      ),
      
      tabItem(tabName = "oneway_anova_63",
              uiOutput("oneway_anova_63_markdown")
      ),
      
      tabItem(tabName = "twoway_anova_65",
              uiOutput("twoway_anova_65_markdown")
      ),
      
      tabItem(tabName = "twoway_anova_int_67",
              uiOutput("twoway_anova_int_67_markdown")
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
  
  output$hypothtest_markdown <- renderUI({
    includeHTML("ch08p28_hypothtest.html")
  })

  output$ztest_markdown <- renderUI({
    includeHTML("ch08p41_z_test.html")
  })
  
  output$ttest_one_43_markdown <- renderUI({
    includeHTML("ch08p43_student_t_test_one.html")
  })
  
  output$ttest_one_44_markdown <- renderUI({
    includeHTML("ch08p44_student_t_test_one.html")
  })
  
  output$chisqtest_50_markdown <- renderUI({
    includeHTML("ch08p50_chisq_test_assoc.html")
  })
  
  output$ttest_two_54_markdown <- renderUI({
    includeHTML("ch08p54_student_t_test_two.html")
  })
  
  output$ftest_59_markdown <- renderUI({
    includeHTML("ch08p59_f_test.html")
  })
  
  output$oneway_anova_63_markdown <- renderUI({
    includeHTML("ch08p63_OneWay_ANOVA.html")
  })
  
  output$twoway_anova_65_markdown <- renderUI({
    includeHTML("ch08p65_TwoWay_ANOVA.html")
  })
  
  output$twoway_anova_int_67_markdown <- renderUI({
    includeHTML("ch08p67_TwoWay_ANOVA_w_interaction.html")
  })
  
}


shinyApp(ui, server)