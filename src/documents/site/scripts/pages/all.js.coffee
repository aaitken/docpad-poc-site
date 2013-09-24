#google api load listener
window.handleClientLoad = ->
  setTimeout((->
    if MUSE.google
      MUSE.google.checkAuth.apply(MUSE.google)), 1)
