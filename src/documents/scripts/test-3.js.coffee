MUSE = {}


window.handleClientLoad = (->
  MUSE.google.checkAuth()).apply(MUSE.google)


class MUSE.Google

  constructor: ->
    @authButton = document.getElementById('authorizeButton')
    @filePicker = document.getElementById('filePicker') #not needed
    @clientId = '646673521317.apps.googleusercontent.com'
    @scopes = [
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.appdata'
      'https://www.googleapis.com/auth/drive.apps.readonly'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/drive.metadata.readonly'
      'https://www.googleapis.com/auth/drive.readonly']
    @_init()


  #public
  #fat arrow required per event handling
  checkAuth: ->
    debugger
    window.gapi.auth.authorize({
      client_id: @clientId
      scope: @scopes
      immediate: true}, @handleAuthResult)


  _getDocumentData: ->
    gapi.client.load 'drive', 'v2', ->
      request = gapi.client.drive.files.get({'fileId': '1hldsiViTglGZHeaNy1znu094Y5jVfb7iMZqcfHCpC1w'}) #roadmap
      request.execute (resp)->
        @resp = resp
        @getDocumentHtml()


  _getDocumentHtml: ->
    htmlExportLink = @resp.exportLinks['text/html']
    jqxhr = $.ajax({
      url: htmlContentLink
      headers: {Authorization: 'Bearer ' + @accessToken}})
    jqxhr.done ->
      html = jqxhr.responseText
      $target = $('#target')
      $target.html(html)
      $style = $target.find('style')
      text = $style.text()
      text = '#target ' + text.replace(/}/g, '}#target ') #contextualize gdrive styles
      $style.text(text)
      $style.next().hide()
    jqxhr.fail -> alert("error")
    jqxhr.always ->


  handleAuthResult: (authResult)=>
    if authResult && !authResult.error
      @accessToken = authResult.access_token
      @_getDocumentHtml()
    else
      @authButton.style.display = 'block'
      @authButton.onclick = => @_checkAuth()


  _hideEls: ->
    @authButton.style.display = 'none'
    @filePicker.style.display = 'none'


  _init: ->
    @_hideEls()


MUSE.google = new MUSE.Google()
debugger
