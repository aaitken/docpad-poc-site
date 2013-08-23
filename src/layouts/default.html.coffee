doctype 5
html ->

  head ->
    
    meta(charset:"utf-8")
    title("Docpad")
    if @document.description?
      meta(name:"description", content:@document.description)
    
    stylesheets = ['/styles/app.css']
    @getBlock('styles').add(stylesheets).toHTML()

  body ->

    nav class:"top-bar", ->
      ul class:"title-area", ->
        li class:"name", ->
          h1 ->
            a(href:"#", "Muse Studio")

    div class:"row", ->
      div class:"large-12 columns", ->
        h1(class:"docs header", "Muse Studio Product Devlopment")
        hr()

    text(@content)
    text(@getBlock('scripts').add([
      '/scripts/vendor/jquery-2.0.3.js'
      '/scripts/namespaces.js'
      '/scripts/helpers/google.js'
      '/scripts/init.js'
      'https://apis.google.com/js/client.js?onload=handleClientLoad']).toHTML())
