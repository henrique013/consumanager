var gulp = require('gulp')
    //, copy = require('gulp-copy')
    , less = require('gulp-less');


gulp.task('deploy', function () {

    // LESS
    gulp
        .src(['public/**/*.less', '!public/**/*-not.less'])
        .pipe(less())
        .pipe(gulp.dest('public'))
    ;

    // libs
    gulp
        .src('node_modules/bootstrap/dist/**/*')
        .pipe(gulp.dest('public/assets/bootstrap'))
    ;
    gulp
        .src('node_modules/jquery/dist/**/*')
        .pipe(gulp.dest('public/assets/jquery'))
    ;
    gulp
        .src('node_modules/font-awesome/css/**/*')
        .pipe(gulp.dest('public/assets/font-awesome/css'))
    ;
    gulp
        .src('node_modules/font-awesome/fonts/**/*')
        .pipe(gulp.dest('public/assets/font-awesome/fonts'))
    ;
    gulp
        .src('node_modules/eonasdan-bootstrap-datetimepicker/build/**/*')
        .pipe(gulp.dest('public/assets/eonasdan-bootstrap-datetimepicker'))
    ;
    gulp
        .src('node_modules/underscore/underscore-min.js')
        .pipe(gulp.dest('public/assets/underscore'))
    ;
    gulp
        .src('node_modules/bottlejs/dist/**/*')
        .pipe(gulp.dest('public/assets/bottlejs'))
    ;
    gulp
        .src('node_modules/moment/min/**/*')
        .pipe(gulp.dest('public/assets/moment'))
    ;
    gulp
        .src('node_modules/jquery-mask-plugin/dist/**/*')
        .pipe(gulp.dest('public/assets/jquery-mask-plugin'))
    ;
    gulp
        .src('node_modules/bootstrap-typeahead/js/bootstrap-typeahead.min.js')
        .pipe(gulp.dest('public/assets/bootstrap-typeahead'))
    ;
});