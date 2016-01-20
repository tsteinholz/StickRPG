'use strict'

gulp       = require 'gulp'
rename     = require 'gulp-rename'
uglify     = require 'gulp-uglify'
uglifycss  = require 'gulp-uglifycss'
coffee     = require 'gulp-coffee'
gutil      = require 'gulp-util'

DEST = 'dist/'

gulp.task 'compile-coffee', ->
  gulp.src 'src/*.coffee'
    .pipe coffee({bare: true}).on 'error', gutil.log
    .pipe uglify()
    .pipe rename { extname: '.min.js' }
    .pipe gulp.dest DEST + 'js/'

gulp.task 'compile-css', ->
  gulp.src 'css/*.css'
    .pipe uglifycss()
    .pipe rename { extname: '.min.css' }
    .pipe gulp.dest DEST + 'css/'

gulp.task 'default', ['compile-coffee', 'compile-css']
