--- cson

layout: 'default'
description: 'Muse Studio Product Documentation'
styles: 'test'
scripts: [
  '/scripts/helpers/google.js'
  '/scripts/init.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2("Product Roadmap")
        h5 class:"subheader", "Here's what the product roadmap is, high-level info and context..."
        div id:"target", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
