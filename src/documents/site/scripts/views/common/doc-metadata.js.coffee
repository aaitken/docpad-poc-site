class window.MUSE.views.DocMetaData

  constructor: ->
    @$el = $('#muse-doc-metadata')


  render: (options = {})->
    html = """
      Last modified by #{options.user} #{moment(options.time).format('MMMM Do YYYY, h:mm:ss a')}"""
    @$el.html(html)

