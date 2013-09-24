#instance instantiation
MUSE.google = new MUSE.Google({documentId: '1Oxpcx_j-yJe1e6k2lBLMtjjFGmp6kkuVkrOsjYn8rRw'})


MUSE.google.pagePromisee = ->
  
  #interrogate google nodes and class names
  $header = $('#muse-target2 h1')
  para = $header.prev()[0]
  span = $(para).find('span')[0]
  link = $(span).find('a')[0]
  paraClass = para.className
  spanClass = span.className
  linkClass = link.className

  $header.before """
    <p class="#{paraClass}">
      <span class="#{spanClass}"><a target="_blank" href="/prototypes/pages/contest/landing-anonymous.html" class="#{linkClass} muse-new-window">Prototype</a></span>
    </p> """


  

