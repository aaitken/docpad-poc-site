--- cson

layout: 'default'
description: 'Muse Studio Product Plan'
source: 'https://docs.google.com/a/factorylabs.com/document/d/1HuYZbaWiLF5_gX7JRw2zw63uWn_Kthfc4oFTwk4N3mM/edit?usp=sharing'
styles: [
  '/styles/plans/product-plan.css'
  '/styles/plans/nav.css']
scripts: [
  '/scripts/util/google.js'
  '/scripts/views/common/doc-metadata.js'
  '/scripts/pages/plans/product-plan.js'
  '/scripts/pages/all.js'
  '/scripts/pages/plans/all.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "Product Plan"
        h5 id:"muse-doc-metadata", class:"subheader", "Last updated _____ by _____"
        text(@partial('source-links.html.coffee', {source: @document.source}))
        hr()
        div id:"target", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
