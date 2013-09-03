--- cson

layout: 'default'

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 @document.title
        div id:"muse-target1", ->
          h5 id:"muse-doc-metadata", class:"subheader", "&nbsp;"
          text(@partial('source-links.html.coffee', {
            source: @document.source
            archives: @document.archives || '#'}))
          hr()
        div id:"muse-target2", style:"width:100%;"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
