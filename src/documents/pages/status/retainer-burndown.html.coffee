--- cson

layout: 'default'
description: 'Muse Studio Hours Burndown'
styles: [
  '/styles/status/retainer-burndown.css'
  '/styles/status/nav.css']
scripts:
  dev: [
    '/scripts/pages/all.js'
    '/scripts/pages/status/all.js']
  prod: [
    '/scripts/pages-status-retainerburndown.js']

---


div class:'row', ->
  div class:'large-9 push-3 columns', ->
    div class:'row', ->
      div class: 'large-12 columns', ->
        h2 "Hours Burndown"
        h5 class:"subheader", "key metadata, last update and author..."
        div id:"target", style:"width:100%;", ->
          #text('<script type="text/javascript" src="//ajax.googleapis.com/ajax/static/modules/gviz/1.0/chart.js"> {"dataSourceUrl":"//docs.google.com/a/factorylabs.com/spreadsheet/tq?key=0Aqbvj3nsGb1pdGhCVEc4UGF4Ujh4Q0NGUHpubWpuQXc&transpose=0&headers=1&merge=COLS&range=B3%3AB17%2CC3%3AC17&gid=2&pub=1","options":{"titleTextStyle":{"bold":true,"color":"#000","fontSize":16},"series":{"1":{"pointSize":2}},"curveType":"function","legendTextStyle":{"color":"#222","fontSize":"14"},"animation":{"duration":0},"width":611,"lineWidth":2,"hAxis":{"title":"Weeks","useFormatFromData":true,"minValue":null,"viewWindowMode":null,"viewWindow":null,"maxValue":null},"vAxes":[{"title":"Retainer Hours","useFormatFromData":true,"minValue":null,"viewWindow":{"min":null,"max":null},"maxValue":null},{"useFormatFromData":true,"minValue":null,"viewWindow":{"min":null,"max":null},"maxValue":null}],"booleanRole":"certainty","title":"Hours Burndown vs Theme Estimate","height":378,"interpolateNulls":false,"legend":"right","annotations":{"domain":{}},"tooltip":{}},"state":{},"view":{"columns":[{"calc":"emptyString","type":"string","sourceColumn":0},0,1]},"isDefaultVisualization":true,"chartType":"LineChart","chartName":"Chart 1"} </script>')
          img src: "https://docs.google.com/a/factorylabs.com/spreadsheet/oimg?key=0Aqbvj3nsGb1pdGhCVEc4UGF4Ujh4Q0NGUHpubWpuQXc&oid=1&zx=atckuo1uqpdm"
        input type:"button", id:"authorizeButton", style:"display:none", value:"Authorize"
  
  @partial('side-nav.html.coffee')
