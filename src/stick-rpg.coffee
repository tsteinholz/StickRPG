main = ->
  stage = new createjs.Stage 'RPG-Canvas'

  stage.mouseEventEnabled = true

  # TODO : Load in assets

  manifest = [
    { src:"assets/dev/test.jpg", id:"test-screen" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" },
    { src:"", id:"" }
  ]

  queue = new createjs.LoadQueue()
  queue.installPlugin(createjs.Sound)
  queue.on "complete", ->
    something = 2
  , @
  queue.loadManifest manifest


  createjs.Ticker.setFPS(30)
