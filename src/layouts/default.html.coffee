doctype 5
html ->

  head ->
    
    meta charset:"utf-8"
    meta name:"viewport", content:"width=device-width"
    title "Docpad"

    if @document.description?
      meta(name:"description", content:@document.description)
    
    @getBlock('styles').add(['/styles/app.css'].concat(@document.styles)).toHTML()

  body ->

    nav class:"top-bar", ->
      ul class:"title-area", ->
        li class:"name", ->
          h1 ->
            a href:"/", "Muse Studio"
        li class:"toggle-topbar menu-icon", ->
          a href:"#nav-side", ->
            span "Menu"


    div class:"row", ->
      div class:"large-12 columns", ->
        h1(class:"docs header", "Muse Studio Product Development")
        hr()

    text(@content)

    #development
    if @getEnvironment() is 'development'
      text(@getBlock('scripts').add([
        '/scripts/vendor/jquery-2.0.3.js'
        '/scripts/vendor/moment-2.1.0.js'
        '/scripts/app/namespaces.js'
        '/scripts/util/helpers.js'
        '/scripts/util/google.js'
        '/scripts/views/common/doc-metadata.js'
        '/scripts/views/common/doc-buttons.js'
        '/scripts/views/common/doc-loader.js'
        '/scripts/views/common/doc-separator.js'
        '/scripts/views/common/nav-side.js'
        '/scripts/app/init.js']
        .concat(@document.scripts.dev || @document.scripts)
        .concat(['https://apis.google.com/js/client.js?onload=handleClientLoad']))
        .toHTML())
    #build
    else
      text(@getBlock('scripts').add([
        '/scripts/app.js']
        .concat(@document.scripts.prod || @document.scripts)
        .concat(['https://apis.google.com/js/client.js?onload=handleClientLoad']))
        .toHTML())

