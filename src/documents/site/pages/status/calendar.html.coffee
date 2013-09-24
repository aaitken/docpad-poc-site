--- cson

layout: 'default'
description: 'Muse Studio Hours Burndown'
styles: [
  '/site/styles/status/calendar.css'
  '/site/styles/status/nav.css']
scripts:
  dev: [
    '/site/scripts/pages/all.js'
    '/site/scripts/pages/status/all.js']
  prod: [
    '/site/scripts/pages-status-calendar.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "Calendar"
        h5 class:"subheader", "Project dates."
        div id:"target", style:"width:100%;", ->
        iframe src:"https://www.google.com/calendar/embed?showTitle=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=2&amp;bgcolor=%23cccccc&amp;src=factorylabs.com_s25tfdko7iidi3gdrd0ttv49j4%40group.calendar.google.com&amp;color=%23333333&amp;ctz=America%2FDenver", style:"border-width:0", width:"100%", height:"600", frameborder:"0", scrolling:"no"
  @partial('side-nav.html.coffee')
