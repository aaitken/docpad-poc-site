window.MUSE.helpers.avoidFlicker = (section)->
  $(".section-container .section:nth-child(#{section})").addClass('active')
  $('head link:last-child').remove()

