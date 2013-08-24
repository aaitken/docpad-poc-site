#instance instantiation
google = window.MUSE.google = new window.MUSE.Google({documentId: '1hldsiViTglGZHeaNy1znu094Y5jVfb7iMZqcfHCpC1w'})


#google api load listener
window.handleClientLoad2 = ->
  setTimeout((-> google.checkAuth.apply(google)), 1)
