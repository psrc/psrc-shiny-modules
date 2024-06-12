# Create the left panel

# https://chsamii.medium.com/how-to-focus-on-a-non-input-element-96db50b36e97
# https://codepen.io/shiroshiro/pen/Rwmgqxv

left_panel_ui <- function(id) {
  ns <- NS(id)
  
  links_withtags <- withTags(
    map2(transit_links, names(transit_links), 
         ~div(class = "links-container", tags$a(class = "links", href = .x, .y, tabindex="0", target = "_blank")))
  )

  tagList(
    
    div("Transit Resources",
        class = "m-menu__title"),
    
    div(a(class = "source_url left-panel-url", 
          href = "https://www.transit.dot.gov/ntd/ntd-data", 
          "National Transit Database", 
          target="_blank"),
        class = "focus",
        tabindex="0"),
    
    div(a(class = "source_url left-panel-url", 
          "Another Link",
          href = "https://learntheweb.courses/topics/css-selectors-units-cheat-sheet/",
          target = "_blank"),
        class = "focus",
        tabindex="0"),
    
    bsCollapse(id = "transit-collapse", 
               open = NULL,
               
               bsCollapsePanel("Transit Agency Websites",
                               links_withtags
                               )
               )
    
  ) # end taglist
}

left_panel_server <- function(id, page_nm) {
  
  moduleServer(id, function(input, output, session) { 
    ns <- session$ns

    
  }) # end moduleServer
  
}
