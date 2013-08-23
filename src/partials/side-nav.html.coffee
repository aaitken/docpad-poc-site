div class:"large-3 pull-9 columns", ->
  div class:"section-container accordion", ->
    
    section class:"section active", ->
      p class:"title", ->
        a "Plans"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"#", "Product Plan"
          li ->
            a href:"/pages/roadmap.html", "Product Roadmap"
          li ->
            a("Current Theme")
          #li(class:"divider")
          #li ->
            #a("New Feature Requirements")
          #li ->
            #a("Feature Backlog")

    section class:"section", ->
      p class:"title", ->
        a("Requirements")

    section class:"section", ->
      p class:"title", ->
        a("Prototypes")
