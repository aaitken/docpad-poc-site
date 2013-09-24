doctype 5
html ->

  head ->
    
    meta charset:"utf-8"
    meta name:"viewport", content:"width=device-width"
    title "Muse Studio"

    if @document.description?
      meta(name:"description", content:@document.description)
    
    @getBlock('styles').add(['/site/styles/app.css'].concat(@document.styles)).toHTML()

  body ->

    nav id:"muse-nav-top", class:"top-bar", ->
      ul class:"title-area", ->
        li class:"name", ->
          h1 ->
            a href:"/", "Muse Studio"
        li class:"toggle-topbar menu-icon", ->
          a href:"#muse-nav-bottom", ->
            span "&nbsp;"


    div class:"row", ->
      div class:"large-12 columns", ->
        h1(class:"docs header", "Muse Studio Product Development")
        hr()

    text(@content)

    #development
    if @getEnvironment() is 'development'
      text(@getBlock('scripts').add([
        '/site/scripts/vendor/jquery-2.0.3.js'
        '/site/scripts/vendor/moment-2.1.0.js'
        '/site/scripts/app/namespaces.js'
        '/site/scripts/util/helpers.js'
        '/site/scripts/util/google.js'
        '/site/scripts/views/common/doc-metadata.js'
        '/site/scripts/views/common/doc-buttons.js'
        '/site/scripts/views/common/doc-loader.js'
        '/site/scripts/views/common/doc-separator.js'
        '/site/scripts/views/common/nav-side.js'
        '/site/scripts/app/init.js']
        .concat(@document.scripts.dev || @document.scripts)
        .concat(['https://apis.google.com/js/client.js?onload=handleClientLoad']))
        .toHTML())
    #build
    else
      text(@getBlock('scripts').add([
        '/site/scripts/app.js']
        .concat(@document.scripts.prod || @document.scripts)
        .concat(['https://apis.google.com/js/client.js?onload=handleClientLoad']))
        .toHTML())

