var gulp = require('gulp');

gulp.task('default', ['firstTask'], function () {
  console.log("\n\t===> welcome to Gulp..\n");
});

gulp.task('firstTask', function () {
  console.log('\n\t===> this is the log from gulp file\n');
});

gulp.task('scripts', function () {
  gulp.src('src/**').pipe(gulp.dest('dest/'));
});
