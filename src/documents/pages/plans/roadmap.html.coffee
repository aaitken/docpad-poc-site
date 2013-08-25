--- cson

layout: 'default'
description: 'Muse Studio Roadmap'
styles: [
  '/styles/plans/roadmap.css'
  '/styles/plans/nav.css']
scripts: [
  '/scripts/util/google.js'
  '/scripts/pages/plans/roadmap.js'
  '/scripts/pages/all.js'
  '/scripts/pages/plans/all.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2("Roadmap")
        h5 class:"subheader", "key metadata, last update and author..."
        div id:"target", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
