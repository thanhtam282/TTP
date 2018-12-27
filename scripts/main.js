////// GLOBAL ////////

const moveLanguage = () => {
	return new MappingListener({
		selector: '.language',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'appendTo',
		breakpoint: 992,
	}).watch();
}
const movehotline = () => {
	return new MappingListener({
		selector: '.hot-line',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'prependTo',
		breakpoint: 992,
	}).watch();
}
const moveCart = () => {
	return new MappingListener({
		selector: '.cart',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar',
		mobileMethod: 'insertBefore',
		breakpoint: 992,
	}).watch();
}
const moveUser = () => {
	return new MappingListener({
		selector: '.user',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.main-navbar .nav',
		mobileMethod: 'prependTo',
		breakpoint: 992,
	}).watch();
}
const moveSearch = () => {
	return new MappingListener({
		selector: '.search',
		desktopWrapper: '.toolbar',
		desktopMethod: 'appendTo',
		mobileWrapper: '.menu-wrap .logo-wrap',
		mobileMethod: 'insertAfter',
		breakpoint: 992,
	}).watch();
}

function turnoffSearch() {
	$('.cc-header .search-turn-off').on('click', function (e) {
		e.stopPropagation()
		$(this).parent().removeClass('active')
	})
}

function toggleSearch() {
	$('.cc-header .search-toggle').on('click', function () {
		$('.cc-header .search-panel').toggleClass('active')
	})
}

function toggleMainNav() {
	$('.cc-header .menu-toggle').on('click', function () {
		$('.cc-header .nav').toggleClass('active')
		$('.cc-header .backdrop').toggleClass('active')
	})
}

function closeMainNav() {
	$('.backdrop').on('click', function () {
		console.log(1);
		$('.nav').removeClass('active')
		$('.backdrop').fadeOut(400)

	})
}

function toggleCart() {
	$('body').on('click', '.cart-toggle', function () {
		$('.cc-header .cartpanel').toggleClass('open')
	})
}

function closeCart() {
	$('body').on('click', '.btn-closecart .lnr-cross', function () {
		$('.cc-header .cartpanel').removeClass('open')
	})
}

// function addBackdrop() {
// 	$('.cc-header .menu-toggle').on('click', function () {
// 		if ($('header .backdrop').length) { // If media query matches
// 			$('header .backdrop').remove()
// 		} else {
// 			$('header').append('<div class="backdrop"></div>')
// 			// $('.cc-header .backdrop').fadeToggle(400)
// 		}
// 		// $('.cc-header .nav').toggleClass('active')
// 	})
// }


$(function () {
	$('.backdrop').on('click', function() {
		console.log(1)
		$('.cc-header .nav').toggleClass('active')
		$('.cc-header .backdrop').toggleClass('active')

		// $('.backdrop').remove()
	})

	
})

function toggleLang() {
	$('.cc-header .language').on('click', function () {
		$(this).find('ul').slideToggle(300)
	})
}

function toggleUser() {
	$('.user').click(function () {
		$(this).find('.user-panel').fadeToggle(500)
	})
}

function slider_banner() {
	if ($('.phanam-banner-1 .list-items').length) {
		$(".phanam-banner-1 .list-items").slick({
			autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: true,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}

};

$(function () {
	$('.phanam-header-1 .btn-open-menu').on('click', function () {
		$('.phanam-header-1 .btn-open-menu').toggleClass('active')
		$('.sidemenu').toggleClass('active')
		$('.phanam-header-1 .nav-bottom').toggleClass('active')
		$(' .sidemenu-backdrop').toggleClass('active')
	})
	$(' .sidemenu-backdrop').on('click', function () {
		$('.phanam-header-1 .btn-open-menu').toggleClass('active')
		$('.sidemenu').toggleClass('active')
		$('.phanam-header-1 .nav-bottom').toggleClass('active')
		$(' .sidemenu-backdrop').toggleClass('active')
	})
})
////// END OF GLOBAL ////////


var slider_home = () => {
	if ($('.phanam-slider-1 .list-items').length) {
		$(".phanam-slider-1 .list-items").slick({
			autoplay: false,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 4000,
			dots: false,
			infinite: true,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}

};


var setHeightH3 = () => {
	var maxHeight = 0;

	$('.phanam-intro-about-us-3 .block-wrapper .info-wrapper').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.phanam-intro-about-us-3 .block-wrapper .banner-info-wrapper').height(maxHeight)
	$('.phanam-intro-about-us-3 .block-wrapper .info-wrapper').height(maxHeight)
}


///////// MAIN Control /////
$(document).ready(function () {
	
	// off_menu();
	moveSearch();
	movehotline();
	moveCart();
	moveLanguage();
	// addBackdrop();
	// moveUser();
	turnoffSearch();
	toggleMainNav();
	// closeMainNav();
	// toggleCart();
	// closeCart()
	toggleSearch();
	toggleLang();
	/// END GLOBAL ///
	/// HEADER ///
	// display_search();
	// navMapping();
	// navMapping_lang();
	// slider_banner();

	/// END HEADER ///


});
// $(window).resize(function () { 
// 	if ($(window).width() < 768 ){
// 		setHeightH3()

// 	}

// });