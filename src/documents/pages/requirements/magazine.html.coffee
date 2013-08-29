--- cson

layout: 'default'
description: 'Muse Studio'
styles: [
  '/styles/requirements/magazine.css'
  '/styles/requirements/nav.css']
scripts: [
  '/scripts/util/google.js'
  '/scripts/pages/requirements/magazine.js'
  '/scripts/pages/all.js'
  '/scripts/pages/requirements/all.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "Magazine Requirements"
        h5 class:"subheader", "key metadat, last update and author..."
        div id:"target", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
