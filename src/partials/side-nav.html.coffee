div class:"large-3 pull-9 columns", ->

  nav id:"muse-nav-bottom", class:"top-bar", ->
    ul class:"title-area", ->
      li class:"name", ->
        h1 "&nbsp;"
      li class:"toggle-topbar menu-icon", ->
        a href:"#muse-nav-top", ->
          span "&nbsp;"

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

    section class:"section concepts", ->
      p class:"title", ->
        a "Concepts"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/concepts/contest-improvements.html", "Contest Improvements"
          li ->
            a style:"cursor: default; color: #aaa", href:"", "Magazine"

    section class:"section status", ->
      p class:"title", ->
        a "Status"
      div class:"content", ->
        ul class:"side-nav", ->
          li ->
            a href:"/pages/status/on-tap.html", "On Tap"
          li ->
            a href:"/pages/status/meeting-minutes.html", "Meeting Recap"
          li ->
            a href:"/pages/status/weekly-report.html", "Weekly Report"
          li ->
            a href:"/pages/status/retainer-burndown.html", "Hours Burndown"
          li ->
            a href:"/pages/status/calendar.html", "Calendar"
