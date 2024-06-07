# Create the left panel

left_panel_ui <- function(id) {
  ns <- NS(id)
  
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
      "Another Link"),
      class = "focus",
      tabindex="0"),
    
    div(a(class = "source_url left-panel-url", 
      "Transit Agency websites"),
      class = "focus",
      tabindex="0")
    
  ) # end taglist
  
}

# https://chsamii.medium.com/how-to-focus-on-a-non-input-element-96db50b36e97
# https://codepen.io/shiroshiro/pen/Rwmgqxv


left_panel_server <- function(id, page_nm) {
  
  moduleServer(id, function(input, output, session) { 
    ns <- session$ns

    
  }) # end moduleServer
  
}
