gulp = require('gulp')
sass = require('gulp-sass')
prefix = require('gulp-autoprefixer')
cleanCSS = require('gulp-clean-css')
rename = require('gulp-rename')
concat = require('gulp-concat')
uglify = require('gulp-uglify')
coffee = require('gulp-coffee')
livereload = require('gulp-livereload')

jsInternals = [
	'dev/javascript/**/*'
	'dev/angular/main.js'
]
jsExternals = [
	'node_modules/jquery/dist/jquery.min.js'
	'node_modules/angular/angular.min.js'
]

# Compila sass
gulp.task 'sass', ->
	gulp.src 'dev/sass/**/*.sass'
		.pipe sass()
		.pipe prefix {
            browsers: ['last 5 versions']
            cascade: false
        }
		.pipe gulp.dest 'build/'

# concatena js
gulp.task 'js:internals', ->
	gulp.src jsInternals
		.pipe uglify()
		.pipe concat 'internals.js'
		.pipe gulp.dest 'build/'

# concatena js
gulp.task 'js:externals', ->
	gulp.src jsExternals
		.pipe uglify()
		.pipe concat 'externals.js'
		.pipe gulp.dest 'build/'

####
# Minify functions

# Minify css
gulp.task 'css:minify', ->
	gulp.src 'build/main.css'
		.pipe cleanCSS ({
			debug: true, compatibility: 'ie8'
		})
		.pipe prefix {
            browsers: ['last 5 versions']
            cascade: false
        }
		.pipe rename { suffix: '.min' }
		.pipe gulp.dest 'build/'
		null

# minify js
gulp.task 'js:minify', ->
	gulp.src 'build/internals.js'
		.pipe uglify()
		.pipe rename { suffix: '.min' }
		.pipe gulp.dest 'build/'

# Minify todos os tipos
gulp.task 'minify', ['css:minify', 'js:minify']

# compila coffee
gulp.task 'compile:coffee', ->
	gulp.src ['dev/angular/config/*.coffee', 'dev/angular/**/*.coffee']
		.pipe coffee { bare: true }
		.pipe concat 'main.js'
		.pipe gulp.dest 'dev/angular/'

# compila coffee e adiciona aos internos
gulp.task 'coffee', ['compile:coffee', 'js:internals']

# unir scripts
gulp.task 'js:all', ->
	gulp.src ['build/externals.js', 'build/internals.min.js']
		.pipe concat 'main.min.js'
		.pipe gulp.dest 'build/'

# build
gulp.task 'production', ['sass', 'css:minify', 'coffee', 'js:minify', 'js:all']

# css:watch
gulp.task 'sass:watch', ->
	livereload.listen()
	gulp.watch 'dev/sass/**/*.sass', ['sass'], { awaitWriteFinish: true }

# js:watch
gulp.task 'coffee:watch', ->
	livereload.listen()
	gulp.watch 'dev/angular/**/*.js', ['coffee'], { awaitWriteFinish: true }
