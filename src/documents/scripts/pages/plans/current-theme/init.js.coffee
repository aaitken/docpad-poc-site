#instance instantiation
google = MUSE.google = new MUSE.Google({documentId: '1rdgLDqqj_VmsER-CRsvINI0Bb7qreagHNhVyhR5KGUs'})


#google api load listener
window.handleClientLoad2 = ->
  setTimeout((-> google.checkAuth.apply(google)), 1)


#flicker avoidance
MUSE.helpers.avoidFlicker(1)
