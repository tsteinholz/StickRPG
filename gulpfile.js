'use strict';

var gulp   = require('gulp');
var rename = require('gulp-rename');
var uglify = require('gulp-uglify');
var coffee = require('gulp-coffee');
var gutil  = require('gulp-util');

var DEST = 'build/';

//gulp.task('default', function() {
//  return gulp.src('./src/*.coffee')
//    .pipe(coffee({bare: true}).on('error', gutil.log))
//    .pipe(gulp.dest(DEST))
//    .pipe(uglify())
//    .pipe(rename({ extname: '.min.js' }))
//    .pipe(gulp.dest(DEST));
//});

gulp.task('coffee', function() {
  gulp.src('./src/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./public/'));
});
