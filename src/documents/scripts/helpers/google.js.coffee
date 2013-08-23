class window.MUSE.Google

  constructor: ->
    @authButton = document.getElementById('authorizeButton')
    @filePicker = document.getElementById('filePicker') #not needed
    @clientId = '646673521317.apps.googleusercontent.com' #from API console
    @scopes = [
      'https://www.googleapis.com/auth/drive'
      'https://www.googleapis.com/auth/drive.appdata'
      'https://www.googleapis.com/auth/drive.apps.readonly'
      'https://www.googleapis.com/auth/drive.file'
      'https://www.googleapis.com/auth/drive.metadata.readonly'
      'https://www.googleapis.com/auth/drive.readonly']
    @_init()


  #public
  checkAuth: (immediate = true)->
    window.gapi.auth.authorize({
      client_id: @clientId
      scope: @scopes
      immediate: immediate}, (authResult)=>
        @authResult = authResult
        @_handleAuthResult())


  _getDocumentData: ->
    gapi.client.load 'drive', 'v2', =>
      request = gapi.client.drive.files.get({'fileId': '1hldsiViTglGZHeaNy1znu094Y5jVfb7iMZqcfHCpC1w'}) #roadmap
      request.execute (resp)=>
        @resp = resp
        @_getDocumentHtml()


  _getDocumentHtml: ->
    htmlExportLink = @resp.exportLinks['text/html']
    jqxhr = $.ajax({
      url: htmlExportLink
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


  _handleAuthResult: (authResult)->
    authResult = @authResult
    if authResult && !authResult.error
      @accessToken = authResult.access_token
      @_getDocumentData()
    else
      @authButton.style.display = 'block'
      @authButton.onclick = => @checkAuth(false)


  _hideEls: ->
    @authButton.style.display = 'none'
    @filePicker.style.display = 'none'


  _init: ->
    @_hideEls()
