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
    p "Welcome to your project dashboard page. Here you see most recent project activity, and link to complete project collections of musings, conversations, and people."
  #li "data-id":"joyride-stop-one", "data-text":"Next", ->
    #p "Hello and welcome to the Joyride documentation page"
  li "data-id":"joyride-stop-two", "data-text":"Next", "data-options":"nubPosition: top;", ->
    p "Contest Summary is a special page on which you describe your vision of the perfect kitchen."
  li "data-id":"joyride-stop-three", "data-text":"Next", "data-options":"nubPosition: right;", ->
    p "100% complete means you have satisfied all contest requirements and are elligible to win 10K. You've come third of the way just by entering and creating this project. Now you just need to collect eight musing and provide a short paragraph that together tell us about your perfect kitchen."
  li "data-id":"joyride-stop-four", "data-text":"Next", ->
    p "When you invite other Muse members to your project you can all share musings and conversations. Your project collaborators will be listed here."

#a id:"joyride-stop-one", class:"joyride-stop joyride-stop-one"
a id:"joyride-stop-two", class:"joyride-stop joyride-stop-two"
a id:"joyride-stop-three", class:"joyride-stop joyride-stop-three"
a id:"joyride-stop-four", class:"joyride-stop joyride-stop-four"
