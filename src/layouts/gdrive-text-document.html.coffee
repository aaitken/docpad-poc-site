--- cson

layout: 'default'

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 ->
          text(@document.title)
          img id:"muse-doc-loader", class:"muse-doc-loader", src:"/images/ajax-loader.gif"
        div id:"muse-target1", class:"muse-target1", ->
          h5 id:"muse-doc-metadata", class:"subheader", "&nbsp;"
          text(@partial('source-links.html.coffee', {
            source: @document.source
            archives: @document.archives || '#'}))
          hr id:"muse-doc-separator"
        div id:"muse-target2", class:"muse-target2"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
