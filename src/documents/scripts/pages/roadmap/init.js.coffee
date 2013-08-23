#instance instantiation
google = window.MUSE.google = new window.MUSE.Google()


#google api load listener
window.handleClientLoad2 = ->
  setTimeout((-> google.checkAuth.apply(google)), 1)
