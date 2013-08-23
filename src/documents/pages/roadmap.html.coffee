--- cson

layout: 'default'
description: 'Muse Studio Roadmap'
styles: ['/styles/pages/roadmap.css']
scripts: [
  '/scripts/helpers/google.js'
  '/scripts/pages/roadmap/init.js']

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
