#init side accordion
new MUSE.views.NavSide()


#google api load listener
#convoluted BUT... it seems the handling funtion needs to be defined before it's parameterized by the google api call
#even though its invocation waits for the api onload
#setInterval fights off race condition
window.handleClientLoad = ->
  console.log 'handleClientLoad'
  int = setInterval (->
    if window.handleClientLoad2
      window.handleClientLoad2()
      clearInterval(int)
    else
      handleClientLoad()),100
