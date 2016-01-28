'use strict'

gulp       = require 'gulp'
rename     = require 'gulp-rename'
uglify     = require 'gulp-uglify'
uglifycss  = require 'gulp-uglifycss'
coffee     = require 'gulp-coffee'
gutil      = require 'gulp-util'
sourcemaps = require 'gulp-sourcemaps'

DEST = 'dist/'

################################################################################
# Production Tasks
################################################################################

gulp.task 'compile-coffee', ->
  gulp.src 'src/*.coffee'
    .pipe coffee({bare: true}).on 'error', gutil.log
    .pipe uglify()
    .pipe rename { extname: '.min.js' }
    .pipe gulp.dest DEST + 'js/'

gulp.task 'compile-javascript', ->
  gulp.src '**/*.js'
    .pipe sourcemaps.init()
    .pipe sourcemaps.write 'maps/'
    .pipe gulp.dest DEST + 'js/'

################################################################################
# Development Tasks
################################################################################

gulp.task 'debug-compile-coffee', ->
  gulp.src 'src/*.coffee'
    .pipe sourcemaps.init()
    .pipe coffee({bare: true}).on 'error', gutil.log
    .pipe sourcemaps.write 'maps/'
    .pipe gulp.dest DEST + 'js/'

gulp.task 'debug-compile-javascript', ->
  gulp.src '**/*.js'
    .pipe uglify()
    .pipe rename { extname: '.min.js' }
    .pipe gulp.dest DEST + 'js/'

################################################################################
# Common Tasks
################################################################################

gulp.task 'compile-css', ->
  gulp.src 'css/*.css'
    .pipe uglifycss()
    .pipe rename { extname: '.min.css' }
    .pipe gulp.dest DEST + 'css/'

gulp.task 'copy-html', ->
  gulp.src [ 'index.html' ]
    .pipe gulp.dest DEST

gulp.task 'debug-copy-html', ->
  gulp.src [ 'debug.html' ]
    .pipe gulp.dest DEST

# TODO: Copy only certain file extensions
gulp.task 'copy-assets', ->
  gulp.src 'assets/**/*'
    .pipe gulp.dest DEST + 'assets/'

# TODO : Copy over other files like imgs

gulp.task 'default', [
  'compile-coffee',
  'compile-javascript',
  'compile-css',
  'copy-html',
  'copy-assets'
]

gulp.task 'default-debug', [
  'debug-compile-coffee',
  'debug-compile-javascript',
  'compile-css',
  'debug-copy-html',
  'copy-assets'
]
