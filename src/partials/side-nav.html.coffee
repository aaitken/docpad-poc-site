div class:"large-3 pull-9 columns", ->
  div class:"section-container accordion", ->
    
    section class:"section active", ->
      p class:"title", ->
        a "Plans"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/product-plan.html", "Product Plan"
          li ->
            a href:"/pages/roadmap.html", "Roadmap"
          li ->
            a href:"/pages/current-theme.html", "Current Theme"
          li ->
            a href:"#", "Current Iteration"

    section class:"section", ->
      p class:"title", ->
        a "Requirements"

    section class:"section", ->
      p class:"title", ->
        a "Prototypes"

    section class:"section", ->
      p class:"title", ->
        a "Status"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"#", "Meeting Minutes"
          li ->
            a href:"#", "Weekly Report"
          li ->
            a href:"#", "Retainer Burndown"
