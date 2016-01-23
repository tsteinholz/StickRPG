# StickRPG [![Build Status](https://travis-ci.org/tsteinholz/StickRPG.svg?branch=master)](https://travis-ci.org/tsteinholz/StickRPG) [![Dependencies Status](https://david-dm.org/tsteinholz/stickrpg.svg)](https://david-dm.org/tsteinholz/stickrpg) [![Dev Dependencies Status](https://david-dm.org/tsteinholz/stickrpg/dev-status.svg)](https://david-dm.org/tsteinholz/stickrpg#info=devDependencies&view=table) [![Join the chat at https://gitter.im/tsteinholz/StickRPG](https://badges.gitter.im/tsteinholz/StickRPG.svg)](https://gitter.im/tsteinholz/StickRPG?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![Slack Status](https://stick-rpg.herokuapp.com/badge.svg)](https://stickrpg.slack.com)

A [clean room](https://en.wikipedia.org/wiki/Clean_room_design) implementation of
[Stick RPG Complete](http://www.xgenstudios.com/game.php?keyword=stickrpg). This
implementation will be under the MIT License. This game is written for in mostly
coffeescript which is compiled down to javascript via gulp on travis ci. We use
the [CreateJS Code Suites](http://createjs.com) to interface with the canvas.
You will be able to play StickRPG [here](http://tsteinholz.github.io/StickRPG/).
for free of course.

## TODO [![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tsteinholz/stickrpg/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
* Fix the whole require weirdness and get shit working
* Set up pre-loading
* Play intro movie to the game
* Start game/level architecture
* Start creating assets/animations
* Set up travis-ci to push the build folder for all commits with tags to the gh-pages branch

## Getting Started
1. Fork and set up your all your git stuff locally
2. Play with the code.
3. Test with `./server.sh` in the root directory.
4. Create a Pull Request and repeat!

## History
This game was originally build from 2003-2005 by XGenStudios. They built their
game on the adobe flash platform for browsers. I used to play stick RPG
all the time, I remember having all the coolest things, being super rich, strong
successful. It was just an amazing time and I wanted to recreate that fun while
learning javascript / coffeescript as well as html5 and all this other cool stuff.
