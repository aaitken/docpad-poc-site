--- cson

layout: 'prototype'
styles: ['/styles/prototypes/contest/dashboard.css']
scripts: [
  '/scripts/vendor/foundation.js'
  '/scripts/vendor/foundation.joyride.js'
  '/scripts/pages/prototypes/contest.js']

---

img src:"/images/prototypes/contest/03_Dashboard.png"
a id:"hot-spot", class:"hot-spot one", href: "contest-summary.html"

ol class:"joyride-list", "data-joyride":"", ->
  li "data-text":"Next", ->
    p "Hello and welcome to the Joyride documentation page"


