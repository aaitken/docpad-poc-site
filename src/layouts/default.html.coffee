doctype 5
html ->

  #alias metadata object
  doc = @document
  
  head ->
    
    meta(charset:"utf-8")
    title("Docpad")
    if doc.description?
      meta(name:"description", content:doc.description)
    
    stylesheets = ['/styles/app.css']
    #if doc.pageStyles? then stylesheets.push[doc.pageStyles]
    @getBlock('styles').add(stylesheets).toHTML()

  body ->

    nav class:"top-bar", ->
      ul class:"title-area", ->
        li class:"name", ->
          h1 ->
            a(href:"#", "Muse Studio")

    div class:"row", ->
      div class:"large-12 columns", ->
        h1(class:"docs header", "Muse Studio Product Development")
        hr()

    @content

    #scripts = ['test.js']
    #@getBlock('scripts').toHTML()



