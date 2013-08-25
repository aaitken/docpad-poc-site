--- cson

layout: 'default'
description: 'Muse Studio Current Theme'
styles: [
  '/styles/pages/plans/current-theme.css'
  '/styles/pages/plans/nav.css']
scripts: [
  '/scripts/util/google.js'
  '/scripts/pages/plans/current-theme/init.js'
  '/scripts/pages/plans/init.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "Current Theme"
        h5 class:"subheader", "key metadata, last update and author..."
        div id:"target", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
