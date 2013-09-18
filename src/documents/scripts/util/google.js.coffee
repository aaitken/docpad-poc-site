class window.MUSE.Google

  #options.documentId - google id of doc to retrieve
  constructor: (options = {}, html = true)->
    @authButton = document.getElementById('authorizeButton')
    @clientId = '646673521317.apps.googleusercontent.com' #from API console
    @documentId = options.documentId
    @html = html
    @views = {
      metadata: new MUSE.views.DocMetaData()
      buttons: new MUSE.views.DocButtons()
      loader: new MUSE.views.DocLoader()
      separator: new MUSE.views.DocSeparator()}
    @scopes = [
      #'https://www.googleapis.com/auth/drive'
      #'https://www.googleapis.com/auth/drive.appdata'
      #'https://www.googleapis.com/auth/drive.apps.readonly'
      #'https://www.googleapis.com/auth/drive.file'
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
      request = gapi.client.drive.files.get({'fileId': @documentId})
      request.execute (resp)=>
        @resp = resp
        @views.metadata.render({
          user: resp.lastModifyingUserName
          time: resp.modifiedDate})
        @views.buttons.render()
        if @html then @_getDocumentHtml()


  _getDocumentHtml: ->
    htmlExportLink = @resp.exportLinks['text/html']
    @jqxhr = $.ajax({
      url: htmlExportLink
      headers: {Authorization: 'Bearer ' + @accessToken}})
    @_makePromises()


  _makePromises: ->
    @jqxhr.done =>
      html = @jqxhr.responseText
      $target = $('#muse-target2')
      $target.html(html)
      $style = $target.find('style')
      text = $style.text()
      text = '#muse-target2 ' + text.replace(/}/g, '}#muse-target2 ') #contextualize gdrive styles
      $style.text(text)
      @views.loader.remove()
      @views.separator.render()
    @jqxhr.fail -> alert("error")
    @jqxhr.always ->


  _handleAuthResult: (authResult)->
    authResult = @authResult
    if authResult && !authResult.error
      @accessToken = authResult.access_token
      @_getDocumentData()
      @_hideEls()
    else
      @authButton.style.display = 'block'
      @authButton.onclick = => @checkAuth(false)


  _hideEls: ->
    @authButton.style.display = 'none'


  _init: ->
    @_hideEls()
