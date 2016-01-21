main = ->
  stage = new createjs.Stage 'RPG-Canvas'

  stage.mouseEventEnabled = true

  # TODO : Load in assets

  manifest = [
    "assets/dev/test.jpg", { src:"assets/dev/test.jpg", id:"test-screen" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" },
    "", { src:"", id:"" }
  ]

  queue = new createjs.LoadQueue()
  queue.installPlugin(createjs.Sound)
  queue.on "complete", handleLoad, @
  #queue.loadManifest manifest
  queue.loadManifest ["assets/dev/test.jpg", { src:"assets/dev/test.jpg", id:"test" },]


  createjs.Ticker.setFPS(30)

handleLoad = ->
  something = 4
