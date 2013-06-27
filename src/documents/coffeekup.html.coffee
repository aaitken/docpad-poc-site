doctype 5
html ->
  head ->
    meta charset: 'utf-8'
    title "#{@title or 'Untitled'} | A completely plausible website"
    meta(name: 'description', content: @description) if @description?

    # link rel: 'stylesheet', href: '/css/app.css'

    style '''
      body {font-family: sans-serif}
      header, nav, section, footer {display: block}
    '''

    # script src: '/js/jquery.js'

    coffeescript ->
      $(document).ready ->
        alert 'Alerts suck!'
  body ->
    h1 "test"
