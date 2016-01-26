################################################################################
# The MIT License (MIT)
#
# Copyright (c) 2016 Thomas Steinholz
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
################################################################################

stage = null
queue = null

main = ->
  ##############################################################################
  # Initailize the Game
  ##############################################################################

  stage = new createjs.Stage 'RPG-Canvas'

  stage.mouseEventEnabled = true

  # Load Assets
  manifest = [
    "assets/dev/test.jpg", { src:"assets/img/test.jpg", id:"test-screen" },
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
  queue.on "complete", handleLoadEvent, @
  queue.loadManifest manifest

  createjs.Ticker.setFPS 30
  createjs.Ticker.addEventListener "tick", handleTickEvent

handleLoadEvent = ->
  image = queue.getResult "test-screen"
  stage.addChild image
  # TODO : Handle event loading

handleTickEvent ->
  stage.update

handleClickEvent = ->
  # TODO : Handle click event
