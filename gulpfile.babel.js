import del from 'del';
import gulp from 'gulp';
import pug from 'gulp-pug';
import sass from 'gulp-sass';
import babel from 'gulp-babel';
import concat from 'gulp-concat';
import rename from 'gulp-rename';
import imagemin from 'gulp-imagemin';
import uglify from 'gulp-uglify-es';
import cssnano from 'gulp-cssnano';
import prefix from 'gulp-autoprefixer';
import sourcemap from 'gulp-sourcemaps';
import browserSync from 'browser-sync';
import {
	readFileSync
} from 'fs';

const paths = JSON.parse(readFileSync('./paths.json'))

// Remove Folder Dist
const clean = () => del([paths.dist])
export {
	clean
}

const cleanImg = () => del([paths.dist + '/img'])
export {
	cleanImg
}
// Copy Images from Source to Dist
export function copyImages() {
	return gulp.src(paths.images.src)
		.pipe(gulp.dest(paths.images.dest))
}

export function imageCompress() {
	return gulp.src(paths.images.src)
		.pipe(imagemin([
			imagemin.gifsicle({ interlaced: true }),
			imagemin.jpegtran({ progressive: true }),
			imagemin.optipng({ optimizationLevel: 5 }),
		]))
		.pipe(gulp.dest(paths.images.dest))
}

// Copy Fonts from Source to Dist
export function copyFonts1() {
	return gulp.src(paths.fonts.src)
		.pipe(gulp.dest(paths.fonts.dest))
		.pipe(gulp.dest(paths.styles.dest + '/fonts'))
}

// Copy Webfonts from Source to Dist
export function copyFonts2() {
	return gulp.src(paths.webfonts.src)
		.pipe(gulp.dest(paths.webfonts.dest))
}


export function copyFavicon() {
	return gulp.src(paths.favicon.src)
		.pipe(gulp.dest(paths.favicon.dest))
}

export function concatCss() {
	let plugins = JSON.parse(readFileSync(paths.plugins.src));
	return gulp.src(plugins.styles)
		.pipe(concat('core.min.css'))
		.pipe(cssnano())
		.pipe(gulp.dest(paths.styles.dest))
}

export function concatJs() {
	let plugins = JSON.parse(readFileSync(paths.plugins.src));
	return gulp.src(plugins.scripts)
		.pipe(concat('core.min.js'))
		.pipe(uglify())
		.pipe(gulp.dest(paths.scripts.dest))
}

export function pugProcess() {
	return gulp.src([
		paths.templates.src,
		'!./templates/{**/\_*,**/\_*/**}.pug'
	])
		.pipe(pug({
			pretty: '\t',
		}))
		.pipe(gulp.dest(paths.templates.dest))
		.pipe(browserSync.stream({
			match: paths.dist
		}));
}

export function sassProcess() {
	return gulp.src([
		paths.styles.src,
		'!./lib/{**/\_*,**/\_*/**}'
	])
		.pipe(sourcemap.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(prefix({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(sourcemap.write('.'))
		.pipe(gulp.dest(paths.styles.dest))
}


export function sassProcessBuild() {
	return gulp.src([
		paths.styles.src,
		'!./lib/{**/\_*,**/\_*/**}'
	])
		.pipe(sourcemap.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(prefix({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(cssnano())
		.pipe(rename({
			suffix: '.min'
		}))
		.pipe(sourcemap.write('.'))
		.pipe(gulp.dest(paths.styles.dest))
}

export function jsProcess() {
	return gulp.src([
		paths.scripts.src,
		'!./scripts/{**/\_*,**/\_*/**}.js'
	])
		.pipe(sourcemap.init())
		.pipe(babel())
		.pipe(rename({
			suffix: '.min',
		}))
		.pipe(sourcemap.write('.'))
		.pipe(gulp.dest(paths.scripts.dest))
}


export function jsProcessBuild() {
	return gulp.src([
		paths.scripts.src,
		'!./scripts/{**/\_*,**/\_*/**}.js'
	])
		.pipe(sourcemap.init())
		.pipe(babel())
		.pipe(uglify({
			mangle: false,
		}))
		.pipe(rename({
			suffix: '.min',
		}))
		.pipe(sourcemap.write('.'))
		.pipe(gulp.dest(paths.scripts.dest))
}



function watchDist() {
	browserSync.init({
		server: {
			baseDir: paths.dist
		},
		port: 9999,
	})
	gulp.watch(paths.images.src, gulp.series(cleanImg, copyImages))
	gulp.watch(paths.plugins.src, gulp.series(concatCss, concatJs))
	gulp.watch(paths.plugins.lib.scripts, concatJs)
	gulp.watch(paths.plugins.lib.styles, concatCss)
	gulp.watch(paths.styles.lib, sassProcess)
	gulp.watch(paths.scripts.src, jsProcess)
	gulp.watch(paths.templates.src, pugProcess)
	gulp.watch(paths.templates.lib, pugProcess)
	gulp.watch(paths.dist).on('change', browserSync.reload)
}

const dev = gulp.series(
	clean,
	concatJs,
	concatCss,
	copyImages,
	copyFavicon,
	copyFonts1,
	copyFonts2,
	jsProcess,
	sassProcess,
	pugProcess,
	watchDist
)

const build = gulp.series(
	clean,
	concatJs,
	concatCss,
	copyImages,
	copyFavicon,
	copyFonts1,
	copyFonts2,
	jsProcessBuild,
	sassProcessBuild,
	pugProcess,
	watchDist
)

const minify = gulp.series(
	cleanImg,
	imageCompress
)
export {
	dev,
	build,
	minify
}

export default dev