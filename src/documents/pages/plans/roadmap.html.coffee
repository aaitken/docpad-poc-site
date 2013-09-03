--- cson

layout: 'default'
description: 'Muse Studio Roadmap'
source: 'https://docs.google.com/document/d/1hldsiViTglGZHeaNy1znu094Y5jVfb7iMZqcfHCpC1w/edit?usp=sharing'
styles: [
  '/styles/plans/roadmap.css'
  '/styles/plans/nav.css']
scripts: [
  '/scripts/pages/plans/roadmap.js'
  '/scripts/pages/all.js'
  '/scripts/pages/plans/all.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2("Roadmap")
        div id:"muse-target1", ->
          h5 id:"muse-doc-metadata", class:"subheader", "&nbsp;"
          text(@partial('source-links.html.coffee', {source: @document.source}))
          hr()
        div id:"muse-target2", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
