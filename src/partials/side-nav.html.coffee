div class:"large-3 pull-9 columns", ->
  div class:"section-container accordion", id:"nav-side", ->
    
    section class:"section plans", ->
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
            a href:"/pages/plans/current-iteration.html", "Current Iteration"

    section class:"section", ->
      p class:"title", ->
        a "Requirements"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a style:"cursor: default", "Placeholder"
          li class:"divider"
          li ->
            a style:"cursor: default; font-style: italic", "Backlog"

    section class:"section", ->
      p class:"title", ->
        a "Prototypes"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a style:"cursor: default", "Placeholder"

    section class:"section status", ->
      p class:"title", ->
        a "Status"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/status/on-tap.html", "On Tap"
          li ->
            a style:"cursor: default", "Meeting Minutes"
          li ->
            a style:"cursor: default", "Weekly Report"
          li ->
            a href:"/pages/status/retainer-burndown.html", "Hours Burndown"
