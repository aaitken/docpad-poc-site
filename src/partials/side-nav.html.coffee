div class:"large-3 pull-9 columns", ->

  nav id:"muse-nav-bottom", class:"top-bar", ->
    ul class:"title-area", ->
      li class:"name", ->
        h1 "&nbsp;"
      li class:"toggle-topbar menu-icon", ->
        a href:"#muse-nav-top", ->
          span "&nbsp;"

  div class:"section-container accordion", id:"nav-side", ->
    section class:"section muse-plans", ->
      p class:"title", ->
        a "Plans"
      div class:"content", ->
        ul class:"side-nav", ->
          li class:"muse-product-plan", ->
            a style:"color: #c60f13", href:"/site/pages/plans/product-plan.html", "Product Plan"
          li class:"muse-roadmap", ->
            a style:"color: #c60f13", href:"/site/pages/plans/roadmap.html", "Roadmap"
          li class:"muse-current-theme", ->
            a style:"color: #c60f13", href:"/site/pages/plans/current-theme.html", "Current Theme"
          li class:"muse-current-iteration", ->
            a href:"/site/pages/plans/current-iteration.html", "Iterations"

    section class:"section muse-requirements", ->
      p class:"title", ->
        a "Requirements"
      div class:"content", ->
        ul class:"side-nav", ->
          li class:"muse-magazine", ->
            a style:"color: #c60f13", href:"/site/pages/requirements/nfr-magazine.html", "Magazine"

    section class:"section muse-backlogs", ->
      p class:"title", ->
        a "Backlogs"
      div class:"content", ->
        ul class:"side-nav", ->
          li class:"muse-feature-update-backlog", ->
            a href:"/site/pages/backlogs/feature-update-backlog.html", "Feature Update Backlog"
          li class:"muse-new-feature-backlog", ->
            a href:"/site/pages/backlogs/new-feature-backlog.html", "New Feature Backlog"
          li class:"muse-jank", ->
            a href:"/site/pages/backlogs/jank.html", "Jank"

    section class:"section muse-concepts", ->
      p class:"title", ->
        a "Concepts"
      div class:"content", ->
        ul class:"side-nav", ->
          li class:"muse-contest-improvements", ->
            a href:"/site/pages/concepts/contest-improvements.html", "Contest Improvements"
          li ->
            a style:"cursor: default; color: #aaa", href:"", "Magazine"

    section class:"section muse-status", ->
      p class:"title", ->
        a "Status"
      div class:"content", ->
        ul class:"side-nav", ->
          li class:"muse-on-tap", ->
            a href:"/site/pages/status/on-tap.html", "On Tap"
          li class:"muse-meeting-recaps", ->
            a href:"/site/pages/status/meeting-minutes.html", "Meeting Recaps"
          li class:"muse-weekly-report", ->
            a style:"color: #c60f13", href:"/site/pages/status/weekly-report.html", "Weekly Report"
          li class:"muse-hours-burndown", ->
            a href:"/site/pages/status/retainer-burndown.html", "Hours Burndown"
          li class:"muse-calendar", ->
            a href:"/site/pages/status/calendar.html", "Calendar"
