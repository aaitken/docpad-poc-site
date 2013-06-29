--- cson

description: 'Muse Studio Product Documentation'
titles: ['Muse Studio', 'Muse Studio Product Development']


---


doctype 5
html ->

  #alias metadata object
  doc = @document
  
  head ->
    
    meta(charset: 'utf-8')
    title("Docpad")
    meta(name:'description', content:doc.description) if doc.description?
    link(rel:'stylesheet', href:'/styles/app.css')

  body ->
    
    nav class:'top-bar', ->
      ul class:'title-area', ->
        li class:'name', ->
          h1 ->
            a(href:'#', doc.titles[0])

    div class:'row', ->
      div class:'large-12 columns', ->
        h1(class:'docs header', doc.titles[1])
        hr()

    div class:'row', ->
      div class:'large-9 push-3 columns', ->
        div class:'row', ->
          div class: 'large-12 columns', ->
            h2("Product Plan")
      
