CLIENT_ID = '646673521317.apps.googleusercontent.com'
SCOPES = [
  'https://www.googleapis.com/auth/drive'
  'https://www.googleapis.com/auth/drive.appdata'
  'https://www.googleapis.com/auth/drive.apps.readonly'
  'https://www.googleapis.com/auth/drive.file'
  'https://www.googleapis.com/auth/drive.metadata.readonly'
  'https://www.googleapis.com/auth/drive.readonly']
RESP = null
ACCESS_TOKEN = null


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
    ACCESS_TOKEN = authResult.access_token
    getRoadmap()
  else
    authButton.style.display = 'block'
    authButton.onclick = ->
      gapi.auth.authorize({
        'client_id': CLIENT_ID
        'scope': SCOPES
        'immediate': false}, handleAuthResult)


#https://developers.google.com/drive/v2/reference/files/get
#http://stackoverflow.com/questions/14262884/google-drive-javascript-api-gapi-client-drive-files-undefined
getRoadmap = ->
  gapi.client.load 'drive', 'v2', ->
    request = gapi.client.drive.files.get({'fileId': '1hldsiViTglGZHeaNy1znu094Y5jVfb7iMZqcfHCpC1w'})
    request.execute (resp)->
      RESP = resp
      requestHtmlContent()
   
requestHtmlContent = ->
  htmlContentLink = RESP.exportLinks['text/html']
  jqxhr = $.ajax({
    url: htmlContentLink
    headers: {Authorization: 'Bearer ' + ACCESS_TOKEN}})
  jqxhr.done ->
    console.log jqxhr.responseText
  jqxhr.fail -> alert("error")
  jqxhr.always ->
