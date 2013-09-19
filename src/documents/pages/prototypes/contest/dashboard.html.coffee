--- cson

layout: 'prototype'
styles: ['/styles/prototypes/contest/dashboard.css']
scripts: [
  '/scripts/vendor/foundation.js'
  '/scripts/vendor/foundation.joyride.js'
  '/scripts/pages/prototypes/contest/dashboard.js']

---

img src:"/images/prototypes/contest/03_Dashboard.png"
a id:"hot-spot", class:"hot-spot one", href: "contest-summary.html"

ol class:"joyride-list", "data-joyride":"", ->
  li "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"
  li "data-id":"joyride-stop-one", "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"
  li "data-id":"joyride-stop-two", "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"
  li "data-id":"joyride-stop-three", "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"
  li "data-id":"joyride-stop-four", "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"

a id:"joyride-stop-one", class:"joyride-stop joyride-stop-one"
a id:"joyride-stop-two", class:"joyride-stop joyride-stop-two"
a id:"joyride-stop-three", class:"joyride-stop joyride-stop-three"
a id:"joyride-stop-four", class:"joyride-stop joyride-stop-four"
