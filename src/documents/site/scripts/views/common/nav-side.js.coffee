class MUSE.views.NavSide

  constructor: ->
    @$el = $('#nav-side')
    @_init()


  _bindEvents: ->
    @$el.on 'click', '.title', (e)=>
      @event = e
      @_doAccordion()


  _doAccordion: ->
    @$el.find('.active').removeClass('active')
    $(@event.currentTarget).parent().addClass('active')


  _init: ->
    @_bindEvents()
