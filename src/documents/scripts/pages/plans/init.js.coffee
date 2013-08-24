#google api load listener
window.handleClientLoad2 = ->
  setTimeout((-> MUSE.google.checkAuth.apply(MUSE.google)), 1)


#flicker avoidance
MUSE.helpers.avoidFlicker(1)
