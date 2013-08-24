#instance instantiation
google = window.MUSE.google = new window.MUSE.Google({documentId: '1HuYZbaWiLF5_gX7JRw2zw63uWn_Kthfc4oFTwk4N3mM'})


#google api load listener
window.handleClientLoad2 = ->
  setTimeout((-> google.checkAuth.apply(google)), 1)
