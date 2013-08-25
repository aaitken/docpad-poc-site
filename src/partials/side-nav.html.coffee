div class:"large-3 pull-9 columns", ->
  div class:"section-container accordion", id:"nav-side", ->
    
    section class:"section", ->
      p class:"title", ->
        a "Plans"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/plans/product-plan.html", "Product Plan"
          li ->
            a href:"/pages/plans/roadmap.html", "Roadmap"
          li ->
            a href:"/pages/plans/current-theme.html", "Current Theme"
          li ->
            a href:"#", "Current Iteration"

    section class:"section", ->
      p class:"title", ->
        a "Requirements"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"#", "Placeholder"

    section class:"section", ->
      p class:"title", ->
        a "Prototypes"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"#", "Placeholder"

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
