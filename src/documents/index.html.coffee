doctype 5
html ->
  
  head ->
    
    meta(charset: 'utf-8')
    title("Docpad")
    meta(name: 'description', content: @description) if @description?
    link(rel: 'stylesheet', href: '/styles/app.css')

  body ->
    
    nav class:'top-bar', ->
      ul class:'title-area', ->
        li class:'name', ->
          h1 ->
            a href:'#', ->
              "Muse Studio"

    div class:'row', ->
      div class:'large-12 columns', ->
        h1 class:'docs header', ->
          "Muse Studio Product Documentation"
        hr()
