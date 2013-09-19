doctype 5
html ->

  head ->
    
    meta charset:"utf-8"
    meta name:"viewport", content:"width=device-width"
    title "Muse Studio"

    @getBlock('styles').add(['/styles/prototypes/all.css'].concat(@document.styles)).toHTML()

  body ->

    text(@content)
    text(@getBlock('scripts').add([
      '/scripts/vendor/jquery-2.0.3.js']
      .concat(@document.scripts))
      .toHTML())
