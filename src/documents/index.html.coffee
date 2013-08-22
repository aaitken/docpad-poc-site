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
        h2("Product Plan")
        p("Here's the content of what we're gonna put here... again... and again")
        iframe id:"target", style:"width:100%; background:#fff", seamless:"true"
        input type:"file", id:"filePicker", style:"display:none"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
