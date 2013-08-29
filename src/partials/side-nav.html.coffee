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

    section class:"section requirements", ->
      p class:"title", ->
        a "Requirements"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/requirements/nfr-magazine.html", "NFR Magazine"
          li class:"divider"
          li ->
            a style:"font-style: italic", href:"/pages/requirements/feature-update-backlog.html", "Feature Update Backlog"
          li ->
            a style:"font-style: italic", href:"/pages/requirements/new-feature-backlog.html", "New Feature Backlog"
          li ->
            a style:"font-style: italic", href:"/pages/requirements/jank.html", "Jank"

    section class:"section", ->
      p class:"title", ->
        a "Prototypes"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"#", "Magazine"

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
