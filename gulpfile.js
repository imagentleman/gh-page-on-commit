var gulp = require('gulp');
var deletea = require('deletea');

gulp.task('default', ['clean'], function() {
  gulp.src('src/**/*')
    .pipe(gulp.dest('dist'));
});

gulp.task('clean', function() {
  deletea('dist');
});
