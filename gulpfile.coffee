'use strict'

gulp   = require 'gulp'
rename = require 'gulp-rename'
uglify = require 'gulp-uglify'
coffee = require 'gulp-coffee'
gutil  = require 'gulp-util'

DEST = 'dist/'

gulp.task 'compile-coffee', ->
  gulp.src 'src/*.coffee'
    .pipe coffee({bare: true}).on 'error', gutil.log
    .pipe uglify()
    .pipe rename { extname: '.min.js' }
    .pipe gulp.dest(DEST)

gulp.task 'default', ['compile-coffee']
