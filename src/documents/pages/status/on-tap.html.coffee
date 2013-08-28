--- cson

layout: 'default'
description: 'Muse Studio Hours Burndown'
styles: [
  '/styles/status/on-tap.css'
  '/styles/status/nav.css']
scripts: [
  '/scripts/util/google.js'
  '/scripts/pages/status/on-tap.js'
  '/scripts/pages/all.js'
  '/scripts/pages/status/all.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "On Tap"
        h5 class:"subheader", "key metadata, last update and author..."
        div id:"target", style:"width:100%;", ->
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
