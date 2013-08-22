CLIENT_ID = '646673521317.apps.googleusercontent.com'
SCOPES = 'https://www.googleapis.com/auth/drive'


window.handleClientLoad = ->
  window.setTimeout(checkAuth, 1)


#Check if the current user has authorized the application.
checkAuth = ->
  gapi.auth.authorize({
    'client_id': CLIENT_ID
    'scope': SCOPES
    'immediate': true}, handleAuthResult)


handleAuthResult = (authResult)->

  authButton = document.getElementById('authorizeButton')
  filePicker = document.getElementById('filePicker')
  authButton.style.display = 'none'
  filePicker.style.display = 'none'

  if authResult && !authResult.error
    alert 'handled, bitch!'
  else
    authButton.style.display = 'block'
    authButton.onclick = ->
      gapi.auth.authorize({
        'client_id': CLIENT_ID
        'scope': SCOPES
        'immediate': false}, handleAuthResult)
