#google api load listener
window.handleClientLoad2 = ->
  setTimeout((->
    if MUSE.google
      MUSE.google.checkAuth.apply(MUSE.google)), 1)
