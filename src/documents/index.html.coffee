--- cson

layout: 'default'
description: 'Muse Studio Product Documentation'
pageStyles: 'test'
pageScripts: 'test'

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2("Product Roadmap")
        h5 class:"subheader", "Here's what the product roadmap is, high-level info and context..."
        div id:"target", style:"width:100%;"
        input type:"file", id:"filePicker", style:"display:none"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
