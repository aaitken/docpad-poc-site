#google api load listener
#convoluted BUT... it seems the handling funtion needs to be defined before it's parameterized by the google api call
#even though its invocation waits for the api onload
window.handleClientLoad = ->
  window.handleClientLoad2()
